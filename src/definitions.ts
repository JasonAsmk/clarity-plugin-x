export interface ClarityPluginXPlugin {
  initialize({ projectId }: { projectId: string }): Promise<void>;
  setCustomUserId({ customUserId }: { customUserId: string }): Promise<void>;
}
