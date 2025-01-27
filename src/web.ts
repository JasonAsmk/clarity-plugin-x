import { WebPlugin } from '@capacitor/core';

import type { ClarityPluginXPlugin } from './definitions';

export class ClarityPluginXWeb extends WebPlugin implements ClarityPluginXPlugin {
  initialize(): Promise<void> {
    throw new Error('Not implemented on web');
  }

  setCustomUserId(): Promise<void> {
    throw new Error('Not implemented on web');
  }
}
