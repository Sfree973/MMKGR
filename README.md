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

###O3 from Reviewer 1
	
Inspired by intrinsically motivated reinforcement learning, we designed a visited reward, which can discourages reasoning agent to revisit same entities within a path. Specifically, the visited reward is defined as follows:
   
   <img width="133" alt="image" src="https://user-images.githubusercontent.com/42330405/179471044-3cc6d2e6-b6f0-4b2f-bb16-d01d63660e4c.png">

where n(et) is the total number of visits fir the entity e at reasoning step t.

Additionally, based on the fact that humans are often penalized for making wrong decisions, we design an obstacle penalty (negative reward) to discourage the agent from inferring the source entity as the answer (i.e., a loop,). Specifically, when the answer is the source entity of the triple query eT = es, the obstacle penalty is defined as follows:

<img width="158" alt="image" src="https://user-images.githubusercontent.com/42330405/179471110-41241f18-148d-4524-9bc4-be3f78b19fac.png">

We have the following comparison models: adding the visited reward (i.e., 3DV) to the 3D mechanism, adding the obstacle penalty (i.e., 3DO) to the 3D mechanism, and a mix of five rewards (i.e., ALL). The experimental results are shown in Figure 1 and Figure 2. After adjusting to the optimal parameters, the performance of the comparison models did not improve. 

<img width="643" alt="image" src="https://user-images.githubusercontent.com/42330405/179750152-b444bdef-f8c3-4b56-b0c2-4754465f809a.png">

<img width="546" alt="image" src="https://user-images.githubusercontent.com/42330405/179688576-3aabb9c7-4011-4a10-996b-6e9858d7e502.png">


The above-mentioned reward mechanisms are widely used in RL area. Intrinsically motivated reinforcement learning [1][2] and obstacle penalty [3][4] related studies are shown below：

[1] Singh S, Lewis R L, Barto A G, et al. Intrinsically motivated reinforcement learning: An evolutionary perspective[J]. IEEE Transactions on Autonomous Mental Development, 2010, 2(2): 70-82.

[2]Chentanez N, Barto A, Singh S. Intrinsically motivated reinforcement learning[J]. Advances in neural information processing systems, 2004, 17.

[3]Ma Y J, Shen A, Bastani O, et al. Conservative and adaptive penalty for model-based safe reinforcement learning[C]//Proceedings of the AAAI Conference on Artificial Intelligence. 2022, 36(5): 5404-5412.

[4]Miyazaki K, Kobayashi S. Reinforcement learning for penalty avoiding policy making[C]//Smc 2000 conference proceedings. 2000 ieee international conference on systems, man and cybernetics.'cybernetics evolving to systems, humans, organizations, and their complex interactions'(cat. no. 0. IEEE, 2000, 1: 206-211.

  
###O3 from Reviewer 4

O3:The $R_{distance}$ is set to different values based on $k$. Can we set it to $\frac{1}{k^2}$ or $- \frac{1}{k^3}$. Please explain the reasons.
Response: The heuristic scheme in manuscript was selected and determined through the following experiments (i.e., Table 1 and Table 2). We can observe that
the reasoning performance of our k settings presented in manuscript is the best. Due to space constraints and this is not the key experimental setting, we did not present following tables in the original manuscript.

<img width="493" alt="image" src="https://user-images.githubusercontent.com/42330405/179395648-92885b54-56dd-4930-8a4c-8ef0f96e1600.png">


  
 ### Rights statement

Before the paper is officially published (ICDE, research paper notifications:  August 25, 2022 ), we do not accept any form of rewriting model methods for other published papers. At the same time, this code is for research use only, and any form of commercial application will not be accepted.
