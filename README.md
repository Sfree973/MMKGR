  ### MMKGR

  This is the pre-release code following paper: MMKGR: Multi-hop Multi-modal Knowledge Graph Reasoning (ICDE, research paper). The purpose of our sharing is to respect the open source regulations of the ICDE 2023 and feed back the results to the knowledge graph community. We appreciate reviewer #1's constructive suggestion to make the code structure clearer, consistents with our purpose of sharing MMKGR for the KGR community. 
  
  In the structure of code, we share not only the MMKGR model(UAN+RL), but also some auxiliary files such as data processing files(e.g., entity2typeid.pkl ,adj_list.pkl, etc.), toolkits(ops.py, vis.py) and configuration files (. sh). In response to the reviewer#1's request, we try to present code structure of our model as intuitively and concisely as possible. Navigation support is shown below.
  
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
  
###O3 from Reviewer 4

O3:The $R_{distance}$ is set to different values based on $k$. Can we set it to $\frac{1}{k^2}$ or $- \frac{1}{k^3}$. Please explain the reasons.
Response: The heuristic scheme in manuscript was selected and determined through the following experiments (i.e., Table 1 and Table 2). We can observe that
the reasoning performance of our k settings presented in manuscript is the best. Due to space constraints and this is not the key experimental setting, we did not present following tables in the original manuscript.

<img width="493" alt="image" src="https://user-images.githubusercontent.com/42330405/179395648-92885b54-56dd-4930-8a4c-8ef0f96e1600.png">


  
 ### Rights statement

Before the paper is officially published (ICDE, research paper notifications:  August 25, 2022 ), we do not accept any form of rewriting model methods for other published papers. At the same time, this code is for research use only, and any form of commercial application will not be accepted.
