  ### MMKGR

  This is the pre-release code following paper: MMKGR: Multi-hop Multi-modal Knowledge Graph Reasoning (ICDE, research paper). The purpose of our sharing is to respect the open source regulations of the ICDE 2023 and feed back the results to the knowledge graph community. We appreciate reviewer #1's constructive suggestion to make the code structure clearer, consistents with our purpose of sharing MMKGR for the KGR community. 
  
  In the structure of code, we share not only the MMKGR model(UAN+RL), but also some auxiliary files such as data processing files(e.g., entity2typeid.py ,adj_list.py, etc.), toolkits(ops.py, vis.py) and configuration files (. sh). In response to the reviewer#1's request, we try to present code structure of our model as intuitively and concisely as possible. Navigation support is shown below.
  
  ### Navigation Support
 ```
── MMKGR_code
    ├── Model
    │      ├── UAN
    │      └──  RL
    │           ├── pg.py
    │           ├── pn.py
    │           ├── rs.py
    │           └── beam_search.py
    ├──  Utils
    │      ├── ops.py
    │      └── vis.py
    ├──  Configs
    │      ├── WN9.sh
    │      └── FB.sh    
    ├──data_utils.py
    ├──experiment.sh  
    ├──eval.py
    ├──README.md
    ├──entity2typeid.pkl    
    ├──adj_list.pkl
    ├──knowledge_graph.py
    └──requirements.txt
 ```
  Furthermore, for your convenience, the training and testing commands of the code are as follows： 
  ### Train and test models
  1. Train embedding-based models
```
./experiment-emb.sh configs/<dataset>-<emb_model>.sh --train <gpu-ID>
```
2. Train our model
```
./experiment.sh configs/<dataset>.sh --train <gpu-ID>
```
3. Test our model 
```
./experiment.sh configs/<dataset>.sh --inference <gpu-ID>
```
4. If you want to print the inference path, please use the following command.
```
./experiment-rs.sh configs/<dataset>-rs.sh --inference <gpu-ID> --save_beam_search_paths
```
  
  
  
 ### Rights statement

Before the paper is officially published (ICDE, research paper notifications:  August 25, 2022 ), we do not accept any form of rewriting model methods for other published papers. At the same time, this code is for research use only, and any form of commercial application will not be accepted.
