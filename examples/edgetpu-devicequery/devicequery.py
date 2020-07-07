from edgetpu.basic import edgetpu_utils

version = edgetpu_utils.GetRuntimeVersion()
print(version)

all_edgetpu_paths = edgetpu_utils.ListEdgeTpuPaths(edgetpu_utils.EDGE_TPU_STATE_NONE)
print('Available EdgeTPU Device(s):')
print(''.join(all_edgetpu_paths))
