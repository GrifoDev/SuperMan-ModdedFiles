.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;
.super Landroid/app/AlertDialog;
.source "JanskyTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;)V
    .locals 22
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$002(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v18

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v9

    .line 192
    .local v9, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-eqz v9, :cond_0

    iget-object v0, v9, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyLineId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 193
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v18

    iget-object v0, v9, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyLineId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyDeviceList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$002(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 195
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    .line 196
    .local v7, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v10

    .line 197
    .local v10, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 199
    .local v5, "bgCall":Lcom/android/incallui/Call;
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 200
    .local v12, "layout":Landroid/view/LayoutInflater;
    const v18, 0x7f0400e3

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 201
    .local v17, "view":Landroid/view/View;
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_1

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 202
    :cond_1
    const-string v18, "JanskyTransferManager"

    const-string v19, "entry is null"

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$202(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 207
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 208
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 209
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v19

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v19, "JanskyTransferManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mArrayList "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 214
    .end local v11    # "i":I
    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 215
    move-object v14, v10

    .line 216
    .local v14, "requestCall":Lcom/android/incallui/Call;
    if-nez v10, :cond_4

    if-eqz v5, :cond_4

    .line 217
    move-object v14, v5

    .line 219
    :cond_4
    if-eqz v14, :cond_5

    .line 220
    invoke-static {v14}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "callMsisdn":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 222
    new-instance v16, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    invoke-direct/range {v16 .. v16}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;-><init>()V

    .line 223
    .local v16, "tempEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0904ef

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 224
    .local v13, "otherDevice":Ljava/lang/String;
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    .line 227
    const-string v18, "000000000000000"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceId:Ljava/lang/String;

    .line 228
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->msisdn:Ljava/lang/String;

    .line 229
    const-string v18, "JanskyTransferManager"

    const-string v19, "other device option is added"

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v6    # "callMsisdn":Ljava/lang/String;
    .end local v13    # "otherDevice":Ljava/lang/String;
    .end local v14    # "requestCall":Lcom/android/incallui/Call;
    .end local v16    # "tempEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;
    :cond_5
    const/4 v15, 0x0

    .line 235
    .local v15, "secondaryName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v8

    .line 236
    .local v8, "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v8, :cond_6

    .line 237
    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getSecondaryNameForCall()Ljava/lang/String;

    move-result-object v15

    .line 240
    :cond_6
    if-eqz v10, :cond_7

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 241
    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v18

    if-nez v18, :cond_7

    if-eqz v15, :cond_7

    .line 242
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v18, "JanskyTransferManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "secondaryName "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v16, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    invoke-direct/range {v16 .. v16}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;-><init>()V

    .line 245
    .restart local v16    # "tempEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    .line 246
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceId:Ljava/lang/String;

    .line 247
    invoke-virtual {v10}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->msisdn:Ljava/lang/String;

    .line 248
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v16    # "tempEntry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;
    :cond_7
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 254
    const v18, 0x7f1002ad

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$302(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 255
    new-instance v18, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f040182

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListAdapter:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$402(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;)Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    .line 256
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v18

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListAdapter:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$400(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 258
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 261
    :cond_8
    const v18, 0x7f1002af

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumber:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$502(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView;

    .line 262
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumber:Landroid/widget/AutoCompleteTextView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 263
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumber:Landroid/widget/AutoCompleteTextView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v18

    new-instance v19, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 283
    :cond_9
    const v18, 0x7f1002ae

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumberRadio:Landroid/widget/RadioButton;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$702(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 284
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumberRadio:Landroid/widget/RadioButton;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v18

    new-instance v19, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v18, 0x7f10005d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$902(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 294
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$900(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ImageButton;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 295
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$900(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ImageButton;

    move-result-object v18

    new-instance v19, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setView(Landroid/view/View;)V

    .line 308
    const v18, 0x7f0904f0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setTitle(I)V

    .line 309
    const/16 v18, -0x1

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090266

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v10, v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Lcom/android/incallui/Call;Lcom/android/incallui/Call;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 360
    const/16 v18, -0x2

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0900c8

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$5;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 366
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 372
    return-void
.end method
