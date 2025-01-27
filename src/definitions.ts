export interface ClarityPluginXPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
