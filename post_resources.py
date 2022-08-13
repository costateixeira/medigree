import os, json
import pandas as pd
import uuid

UUID = uuid.uuid1()
print('UUID.urn     :', UUID.urn)

create = True
delete = True


rejectedResources = [
    'expansions.json',
    'ImplementationGuide',
    'qa.json',
    'package.manifest.json',
    'canonicals.json',
    'usage-stats.json'
]

rBundleC =   {'resourceType':'Bundle','type':'transaction','entry': []}
rBundleD =   {'resourceType':'Bundle','type':'transaction','entry': []}

# this finds our json files
path_to_json = 'output/'
json_files = [pos_json for pos_json in os.listdir(path_to_json) if pos_json.endswith('.json')]

# define a function to include files unless they start with the excluded filenames
def includefile(filename):
    res = True
    for r in rejectedResources:
      if filename.startswith(r):
          res = False
    return res

json_files = [item for item in json_files if includefile(item)] # remove excluded files
json_files = [item for item in json_files  if '-' in item] # safer to include only json files that have a -

if create:
    for index, js in enumerate(json_files):
        with open(os.path.join(path_to_json, js), encoding="utf8" ) as json_file:
            resource = json.load(json_file)
            rt = resource['resourceType']
            if not 'meta' in resource:
              resource['meta'] ={}
#            resource['meta']['source'] = UUID.urn
            #add a tag for upload tracking if needed
            resource['meta']['tag'] = {'system':'http://medigree.net/datatracking/resourcebundles','code':UUID.urn}

            bundleEntry = {'fullUrl':'http://localhost:8080/fhir/'+resource['resourceType']+'/'+resource['id'],'resource':resource, 'request':{'method':'PUT','url':resource['resourceType']+'/'+resource['id']}}
    #        print (bundleEntry)
            rBundleC['entry'].append(bundleEntry)
    #        print (json.dumps(rBundle,indent=2))


    with open('resource-create-transaction.json', 'w') as outfile:
        json.dump(rBundleC, outfile,indent=2)

#print(json_files)

if delete:
    for index, js in enumerate(json_files):
        with open(os.path.join(path_to_json, js), encoding="utf8" ) as json_file:
            resource = json.load(json_file)
            rt = resource['resourceType']
            bundleEntry = {'fullUrl':'http://localhost:8080/fhir/'+resource['resourceType']+'/'+resource['id'], 'request':{'method':'DELETE','url':resource['resourceType']+'/'+resource['id']}}
    #        print (bundleEntry)
            rBundleD['entry'].append(bundleEntry)
    #        print (json.dumps(rBundle,indent=2))
    with open('resource-delete-transaction.json', 'w') as outfile:
      json.dump(rBundleD, outfile,indent=2)
    
    
    