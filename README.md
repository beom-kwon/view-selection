# Contents
1. [Introduction](#introduction)
2. [3D Human Pose Dataset](#3d-human-pose-dataset)
3. [GUI for Subjective Assessment](#gui-for-subjective-assessment)
4. [Citation](#citation)
5. [License](#license)

# Introduction

In this web page, we provide the 3D human pose and ground truth viewpoint datasets used in our paper '[Optimal Camera Point Selection Toward the Most Preferable View of 3-D Human Pose](https://doi.org/10.1109/TSMC.2020.3004338).' In this study, we proposed three metrics that can be used to quantify the goodness of a view. To verify the metrics, first we built a 3D human pose dataset. To collect ground truth viewpoint data, we conducted a subjective assessment on the dataset. During the assessment, each subject watched the 25 poses one at a time. Additionally, for each pose, each subject was asked to find the preferable viewpoints they thought. We verified that the average of the view selection error (VSE) between the viewpoints obtained by the proposed metrics and the ground truth viewpoints was very close to the lower bound of the VSE.

# 3D Human Pose Dataset

Our 3D human pose dataset was collected using a Kinect sensor (version 2). This dataset consists of 25 different poses: 
 1. Sitting
 2. Forward bending
 3. Crouching
 4. Walking
 5. Running
 6. Standing
 7. Pistol shooting
 8. Rifle shooting
 9. Boxing
10. Throwing (right hand)
11. Throwing (left hand)
12. Leaning right
13. Leaning left
14. Pulling something out of the bag
15. Wearing a cap
16. Looking through binoculars
17. Writing on a board (right hand)
18. Writing on a board (left hand)
19. Picking up something (right hand)
20. Picking up something (left hand)
21. Holding the right arm
22. Rolling a ball (right hand)
23. Rolling a ball (left hand)
24. Speaking into a microphone
25. Shouting into a microphone.

# GUI for Subjective Assessment

We implemented the graphical user interface (GUI) to help subjects conveniently find the preferable viewpoints they think during the subjective assessment. The GUI was implemented using MATLAB R2018a. To create the GUI, we used the MATLAB function 'uicontrol.' Therefore, if you want to use the GUI, you will need to install MATLAB on your computer.

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
Our codes and dataset are freely available for non-commercial use.
