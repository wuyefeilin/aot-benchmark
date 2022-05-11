import os
from .default import DefaultEngineConfig


class EngineConfig(DefaultEngineConfig):
    def __init__(self, exp_name='default', model='AOTT'):
        super().__init__(exp_name, model)
        self.STAGE_NAME = 'PRE_BLK'
        self.DATASETS = ['bl30k']

        self.TRAIN_TOTAL_STEPS = 50000
        self.DATA_WORKERS = 2

        self.init_dir()

        pretrain_stage = 'PRE'
        pretrain_ckpt = 'save_step_100000.pth'
        self.PRETRAIN_FULL = True  # if False, load encoder only
        self.PRETRAIN_MODEL = os.path.join(self.DIR_ROOT, 'result',
                                           self.EXP_NAME, pretrain_stage,
                                           'ema_ckpt', pretrain_ckpt)
        # self.PRETRAIN_MODEL = 'pretrain_models/SwinB_AOTL_PRE_BLK_10w_2.pth'
        # self.TEST_CKPT_PATH = 'pretrain_models/SwinB_AOTL_PRE_BLK.pth'

        self.TRAIN_SEQ_TRAINING_START_RATIO = 1.0
