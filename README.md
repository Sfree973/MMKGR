  ### MMKGR

  This is the pre-release code following paper: MMKGR: Multi-hop Multi-modal Knowledge Graph Reasoning (ICDE, research paper).
  
  In the structure of code, we not only share the MMKGR model(UAN+RL) and data processing code, but also compare the transformer and the transformer after combining UAN with the trans_UAN. Specifically, UAN+PG+knowledge graph+eval+experiments are our model. In order to better serve the multimodal community, the models(Trans_UAN and Transformer) are rewritten multimodal fusion models, which are suitable for multimodal feature fusion of multimodal tasks such as VQA, KGR and Image Captioning. Configuration files (. SH) and data processing files (adj_list, type2id, relation2id, entity2id, etc.) are also uploaded completely. For your convenience, the training and testing commands of the code are as follows：
  
  ### Navigation Support
  Code
├── Model
│    ├── UAN
│    ├──  RL
│    │    ├── Environment
│    │    └── Baseline
     ├──experiment.sh
     ├──requirements.txt
├── Data
│    ├── Grapher
│    ├── Batcher
│    └── Data Preprocessing scripts
│            ├── create_vocab
│            ├── create_graph
│            ├── Trainer
│            └── Baseline
  
  ### Train and test models
  1. Train embedding-based models
```
./experiment-emb.sh configs/<dataset>-<emb_model>.sh --train <gpu-ID>
```
2. Train RL models (policy gradient)
```
./experiment.sh configs/<dataset>.sh --train <gpu-ID>
```
3. Test RL models (policy gradient + reward shaping)
```
./experiment.sh configs/<dataset>.sh --inference <gpu-ID>
```
4. If you want to print the inference path, please use the following command.
```
./experiment-rs.sh configs/<dataset>-rs.sh --inference <gpu-ID> --save_beam_search_paths
```
  
  The purpose of our sharing is to respect the open source regulations of the ICDE 2023 and feed back the results to the knowledge graph community.
  
 ### Rights statement

Before the paper is officially published (ICDE, research paper notifications:  August 25, 2022 ), we do not accept any form of rewriting model methods for other published papers. At the same time, this code is for research use only, and any form of commercial application will not be accepted.
