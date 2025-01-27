import { WebPlugin } from '@capacitor/core';

import type { ClarityPluginXPlugin } from './definitions';

export class ClarityPluginXWeb extends WebPlugin implements ClarityPluginXPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
