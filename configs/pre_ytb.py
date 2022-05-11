import os
from .default import DefaultEngineConfig


class EngineConfig(DefaultEngineConfig):
    def __init__(self, exp_name='default', model='AOTT'):
        super().__init__(exp_name, model)
        # self.STAGE_NAME = 'PRE_YTB_ft_100000'
        # self.STAGE_NAME = 'PRE_YTB_ft_95000'
        self.STAGE_NAME = 'PRE_YTB'

        self.init_dir()

        pretrain_stage = 'PRE'
        pretrain_ckpt = 'save_step_100000.pth'
        self.PRETRAIN_FULL = True  # if False, load encoder only
        # self.PRETRAIN_MODEL = os.path.join(self.DIR_ROOT, 'result',
        #                                    self.EXP_NAME, pretrain_stage,
        #                                    'ema_ckpt', pretrain_ckpt)
        # self.PRETRAIN_MODEL = 'results/result/default_RS101_AOTL/PRE_YTB/ema_ckpt/save_step_100000.pth'
        self.PRETRAIN_MODEL = 'results/result/default_SwinB_AOTL/PRE_YTB/ema_ckpt/save_step_95000.pth'
