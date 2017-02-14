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
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$002(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v11

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v11, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyLineId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyLineId:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyDeviceList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$002(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v11, 0x7f0400e3

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_1

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    const-string v11, "JanskyTransferManager"

    const-string v12, "entry is null"

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$202(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_3

    const/4 v6, 0x0

    :goto_0
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_3

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v12

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    iget-object v11, v11, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "JanskyTransferManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mArrayList "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getSecondaryNameForCall()Ljava/lang/String;

    move-result-object v8

    :cond_4
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v8, :cond_5

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v11, "JanskyTransferManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "secondaryName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    invoke-direct {v9}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;-><init>()V

    iput-object v8, v9, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->msisdn:Ljava/lang/String;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mDeviceEntry:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_6

    const v11, 0x7f1002ad

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$302(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/ListView;)Landroid/widget/ListView;

    new-instance v11, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f040182

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mArrayList:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12, v13, v14}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListAdapter:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$402(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;)Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v11

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListAdapter:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$400(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mListView:Landroid/widget/ListView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_6
    const v11, 0x7f1002af

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/AutoCompleteTextView;

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumber:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$502(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumber:Landroid/widget/AutoCompleteTextView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v11

    if-eqz v11, :cond_7

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumber:Landroid/widget/AutoCompleteTextView;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v11

    new-instance v12, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_7
    const v11, 0x7f1002ae

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumberRadio:Landroid/widget/RadioButton;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$702(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mNumberRadio:Landroid/widget/RadioButton;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v11

    new-instance v12, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f10005d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    move-object/from16 v0, p1

    # setter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {v0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$902(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$900(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ImageButton;

    move-result-object v11

    if-eqz v11, :cond_8

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$900(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ImageButton;

    move-result-object v11

    new-instance v12, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-virtual {p0, v10}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setView(Landroid/view/View;)V

    const v11, 0x7f0904eb

    invoke-virtual {p0, v11}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setTitle(I)V

    const/4 v11, -0x1

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09025b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;

    move-object/from16 v0, p1

    invoke-direct {v13, p0, v0, v5, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Lcom/android/incallui/Call;Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v11, -0x2

    # getter for: Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900c6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$5;

    move-object/from16 v0, p1

    invoke-direct {v13, p0, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$5;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
