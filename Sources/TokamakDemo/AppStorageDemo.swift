// Copyright 2019-2020 Tokamak contributors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//  Created by Carson Katri on 7/17/20.
//

import TokamakShim

@available(OSX 11.0, iOS 14.0, *)
struct AppStorageButtons: View {
  @AppStorage("count") var count: Int = 0
  @SceneStorage("count") var sceneCount: Int = 0

  var body: some View {
    HStack {
      Button("Increment AppStorage") { count += 1 }
      Button("Increment SceneStorage") { sceneCount += 1 }
    }
  }
}

@available(OSX 11.0, iOS 14.0, *)
struct AppStorageDemo: View {
  @AppStorage("count") var count: Int = 0
  @SceneStorage("count") var sceneCount: Int = 0

  public var body: some View {
    VStack {
      AppStorageButtons()
      Text("AppStorage: \(count)")
      Text("SceneStorage: \(sceneCount)")
    }
  }
}
