/**
 * Tae Won Ha — @hataewon
 *
 * http://taewon.de
 * http://qvacua.com
 *
 * See LICENSE
 */

#import "VRWorkspaceFactory.h"
#import "VRFileItemManager.h"
#import "VRWorkspace.h"
#import "VRMainWindowControllerFactory.h"


@implementation VRWorkspaceFactory

@autowire(fileItemManager)
@autowire(mainWindowControllerFactory)
@autowire(workspaceController)

- (VRWorkspace *)newWorkspaceWithWorkingDir:(NSURL *)workingDir {
  VRWorkspace *workspace = [[VRWorkspace alloc] init];

  workspace.fileItemManager = _fileItemManager;
  workspace.mainWindowControllerFactory = _mainWindowControllerFactory;
  workspace.workspaceController = _workspaceController;

  workspace.workingDirectory = workingDir;

  return workspace;
}

@end
