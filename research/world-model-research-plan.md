# View-Based World Model

## 研究計画書

### 1. 研究背景

近年のWorld Model研究は、環境の空間的・時間的構造を潜在表現として学習し、将来状態を予測することでAgentの学習・計画・行動を支援する方向へ発展している。World Models、Dreamer、V-JEPA 2、Genie、Robotics World Modelsなどにより、表現学習・予測・生成・ロボティクス・Physical AIへ研究領域が拡大している。

一方、World Modelという語には統一的定義がなく、環境状態表現、潜在ダイナミクスモデル、予測モデル、生成環境、Agent内部モデルなど異なる対象を指して用いられている。本研究はこの問題を、モデルの内部構造だけでなく、世界が観測・認知・データ化・記号化される過程から捉え直す。

### 2. 中心仮説

> 世界は認知によって存在するのではない。しかし、世界がAgentにとって「世界として」現れるためには、InterfaceとCognitionが必要である。

基本構造を次のように置く。

```text
Physical → Interface → Cognition → Data → Symbolic
```

これは絶対的な階層ではなく、生成・依存関係を表す基本方向である。行動・フィードバックは逆方向を含み得る。

### 3. 基本概念

- **Physical**: 物質、エネルギー、身体、環境、出来事など、記号的記述から独立して存在し得る対象・現象。
- **Interface**: 身体、感覚器官、センサー、ロボット、ROS、API、UI、アクチュエータなど、主体と世界の接点。
- **Cognition**: perception、distinction、recognition、interpretation、categorization、reasoning、decision、intentなど、差異を認識しモデル化する過程。
- **Data**: 認識・測定・区別された対象が記録・符号化・保存・処理可能になったもの。
- **Symbolic**: language、sign、name、formula、code、ontology、narrativeなど、認識・Dataを表現・共有・操作する記号体系。

重要な不変条件は **Recognition precedes Data** である。DataはWorldそのものではなく、Worldについて成立した区別の記録である。

### 4. WorldとCognized World

本研究では、

```text
World ≠ Cognized World
```

とする。

Worldは認知主体が存在しなくても存在し得る。一方、Cognized Worldは特定の主体が特定のInterfaceを通じて得た観測と認知によって構成される。したがって、モデルはWorldそのものではなく、観測可能・認識可能・表現可能なWorld Viewを扱う。

> **Model ≠ World**

Thing-in-itselfそのものを完全にモデル化できるとは主張しない。

### 5. View-Based World

Worldを単一の固定Treeとしてではなく、複数のViewが重なり合うGraphとして表現する。

例:

- physical.world
- human.world
- language.world
- sign.world
- land.world
- sky.world
- robot.world
- quantum.world
- wine.world
- gh.repos.world

同一Objectは複数Viewに参加できる。ViewはWorld全体ではなく、特定の目的、主体、Interface、概念体系によって切り出された見方である。したがって階層は絶対的な上下関係ではなく、View間の関係として扱う。

### 6. 先行研究との関係

#### World Models
Ha & Schmidhuber (2018) は環境の空間・時間構造を潜在表現として学習し、その内部でAgentを訓練するWorld Modelを提示した。これはAgent-centered predictive world representationの代表例である。

#### Dreamer
Dreamer系は潜在World Modelの中で未来をrolloutし、予測された将来から行動方策を学習する。World Modelは環境ダイナミクスの予測装置として機能する。

#### Robotics World Models
ロボティクス研究では、World Modelはロボットが活動のために共有する世界情報・内部表現として扱われ、観測、状態、予測、計画、行動との関係が中心となる。Shakey以来の古典的系譜と現在の深層学習系が接続されている。

#### V-JEPA 2
V-JEPA 2は動画から世界の表現を学習し、さらにAction-conditioned World Modelを構築して、予測・計画・ロボット操作へ接続する。これはperceptionからworld understanding、action-conditioned predictionへの発展を示す。

#### Genie
Genieは画像、テキスト、スケッチ等からaction-controllableな仮想世界を生成する方向を示す。World Modelが「世界の予測」だけでなく「操作可能な世界生成」へ拡張していることを示す。

### 7. 本研究の位置付け

既存研究の典型形は、

```text
World → Observation → Internal Model → Prediction → Action
```

である。

本研究はその上位に、

```text
World → Interface → Cognition → Data → Symbolic
                         ↓
                    World View
                         ↓
                World Model / Agent
```

というメタ構造を導入する。

したがって本研究は既存World Modelを置き換えるのではなく、それらがWorldのどの側面をモデル化しているのかを記述する共通メタモデルを提案する。

### 8. 研究課題

- **RQ1**: 既存研究におけるWorld Modelの定義と構成要素を横断比較できるか。
- **RQ2**: Physical、Interface、Cognition、Data、Symbolicを分離することで既存研究を共通分類できるか。
- **RQ3**: View-Based World GraphによってRobotics、Language、Software、Humanなど異なるWorld Modelを統一記述できるか。
- **RQ4**: 専門モデルを独立したViewとして接続することで、単一巨大モデルより再利用性・説明可能性・拡張性を高められるか。
- **RQ5**: Agent-centered predictive modelをWorld/View/Interface/Cognition/Data/Symbolの関係へ拡張することで、Agent設計にどのような利点があるか。

### 9. 研究方法

#### Phase 1 — Literature Review

World Model研究を以下に分類する。

1. Classical AI / Robotics
2. Model-based Reinforcement Learning
3. Latent World Models
4. JEPA / Predictive Representation
5. Generative World Models
6. Robotics World Models
7. Autonomous Driving
8. Embodied AI
9. Cognitive Robotics
10. Symbolic / Semantic World Models

各研究についてWorld、Observation、Interface、State、Representation、Prediction、Action、Agent、Symbol、Uncertainty、Feedbackを抽出する。

#### Phase 2 — Common Ontology

各研究をPhysical / Interface / Cognition / Data / Symbolicへマッピングし、World、View、Object、Observation、State、Agent、Action、Outcome、Evidenceなどを共通語彙として定義する。

#### Phase 3 — Re-description

World Models、Dreamer、V-JEPA 2、Genie、Robotics World Models、自動運転World Models、ROS-based robotic systemsを提案Ontology上で再記述する。

#### Phase 4 — View Graph

NodeとしてWorld、View、Object、Agent、Interface、Observation、Data、Symbol、Model、Action、Outcomeを置き、observes、interfaces_with、recognizes、represents、belongs_to_view、models、predicts、acts_on、produces、participates_in等のRelationを実装する。

#### Phase 5 — Case Studies

1. **Robotics**: ROS等をInterface / Execution Viewとして扱い、Physical WorldとCognitive / Planning Worldを接続する。
2. **Language**: language.world / sign.worldを構築し、自然言語によるWorld representationを記述する。
3. **Software / GitHub**: Repository、Issue、Commit、Workflow、AgentをSoftware World Viewとして記述する。

### 10. 評価指標

- **Coverage**: 既存World Model研究の概念をどれだけ表現できるか。
- **Expressiveness**: 複数Agent・複数View・複数Representationを表現できるか。
- **Interoperability**: 異なる領域のモデルを同一Ontology上で接続できるか。
- **Explainability**: DataやPredictionの成立過程をPhysical → Interface → Cognition → Data → Symbolで追跡できるか。
- **Reusability**: 既存の専門モデルを再実装せずViewとして利用できるか。
- **Consistency**: World、Cognized World、Data、Symbolを混同せず記述できるか。

### 11. 新規性の主張

本研究の新規性は、新しいニューラルネットワークアーキテクチャそのものではない。

主たる新規性は、

> **World ModelをAgent内部の予測モデルとしてのみ扱うのではなく、World、Interface、Cognition、Data、Symbolic Representationの関係を含むView-Based World Ontologyとして再定義すること**

にある。

特に、

- World ≠ Cognized World
- Model ≠ World
- Recognition precedes Data
- Viewは絶対階層ではなく関係である

を明示的な原理とする。

### 12. 研究上の限界

本研究はWorldの形而上学的な最終定義を目的としない。Thing-in-itselfを直接モデル化できるとも主張しない。研究対象は、観測・認識・表現が成立したWorld Viewである。

### 13. 最終命題

> **World Model is not merely a model of the world; it is a model situated within the relation among world, interface, cognition, data, and symbol.**

日本語では、

> **World Modelとは、単なる「世界のモデル」ではなく、世界・Interface・認知・Data・記号の関係の中に位置付けられるモデルである。**

そして基礎原理を、

> **世界は認知の限界である。だが、世界は認知の産物ではない。**

とする。

## 参考文献

1. Ha, D. & Schmidhuber, J. (2018). *World Models*. arXiv:1803.10122.
2. Hafner, D. et al. (2023). *Mastering Diverse Domains through World Models*. DreamerV3, arXiv:2301.04104.
3. Schuster, M. J. et al. (2023). *A Survey of World Models for Autonomous Robots*. Frontiers in Robotics and AI.
4. Ding, X. et al. (2024). *World Models: The Next Chapter in AI*. arXiv:2411.14499.
5. Bruce, J. et al. (2024). *Genie: Generative Interactive Environments*. arXiv:2402.15391.
6. V-JEPA 2 (2025). *Self-Supervised Video Models Enable Understanding, Prediction and Planning*. arXiv:2506.09985.
