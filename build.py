import build_module.mako_build as build

TEMPLATE_DIR = 'template/'
TARGET_DIR = 'data/'

if __name__ == '__main__':
    build.run(template_dir=TEMPLATE_DIR, target_dir=TARGET_DIR)