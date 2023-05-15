# Contents
1. [Introduction](Introduction)
2. [3D Human Pose Dataset](3D-Human-Pose-Dataset)
3. [GUI for Subjective Assessment](GUI-for-Subjective-Assessment)
4. [Citation](Citation)
5. [License](License)

# Introduction

In this web-page, we provide the 3D human pose and ground truth viewpoint datasets used in our paper "[Optimal Camera Point Selection Toward the Most Preferable View of 3-D Human Pose](https://doi.org/10.1109/TSMC.2020.3004338)." In this study, we proposed three metrics that can be used for quantifying the goodness of a view. For the verification of the metrics, first we built a 3D human pose dataset. Then, to collect ground truth viewpoint data, we conducted a subjective assessment on the dataset. During the assessment, each subject watched the 25 poses one at a time. In addition, for each pose, each subject was asked to find the preferable viewpoints he/she thinks. We verified that the average of the view selection error (VSE) between the viewpoints obtained by the proposed metrics and the ground truth viewpoints is very close to the lower bound of the VSE.

# 3D Human Pose Dataset

Our 3D human pose dataset was collected using a Kinect sensor (version 2). This dataset consists of 25 different poses: (1) sitting, (2) forward bending, (3) crouching, (4) walking, (5) running, (6) standing, (7) pistol shooting, (8) rifle shooting, (9) boxing, (10) throwing (right hand), (11) throwing (left hand), (12) leaning right, (13) leaning left, (14) pulling something out of the bag, (15) wearing a cap, (16) looking through binoculars, (17) writing on a board (right hand), (18) writing on a board (left hand), (19) picking up something (right hand), (20) picking up something (left hand), (21) holding the right arm, (22) rolling a ball (right hand), (23) rolling a ball (left hand), (24) speaking into a microphone, and (25) shouting into a microphone.

# GUI for Subjective Assessment

We implemented the graphical user interface (GUI) to help subjects conveniently find the preferable viewpoints they thinks during the subjective assessment. The GUI was implemented using MATLAB R2018a. To implement the GUI, we used the MATLAB function "uicontrol." Therefore, if you want to use the GUI, you need to install MATLAB on your PC.

# Citation
Please cite this paper in your publications if it helps your research.

```
@article{kwon2020optimal,
  author={Kwon, Beom and Huh, Jungwoo and Lee, Kyoungoh and Lee, Sanghoon},
  journal={IEEE Transactions on Systems, Man, and Cybernetics: Systems},
  title={Optimal Camera Point Selection Toward the Most Preferable View of 3-D Human Pose},
  year={2022},
  volume={52},
  number={1},
  pages={533-553},  
  doi={10.1109/TSMC.2020.3004338}
}
```
Paper link:
* [Optimal Camera Point Selection Toward the Most Preferable View of 3-D Human Pose](https://doi.org/10.1109/TSMC.2020.3004338)

# License
Our codes and dataset are freely available for free non-commercial use.
