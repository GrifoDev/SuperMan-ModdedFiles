.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;
.super Landroid/app/AlertDialog;


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
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$002(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyLineId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyLineId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyDeviceList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$002(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fc

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "JanskyTransferManager"

    const-string v1, "entry is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$202(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "JanskyTransferManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mArrayList "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v5, :cond_a

    if-eqz v4, :cond_a

    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    invoke-direct {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;-><init>()V

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0905af

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    const-string v8, "000000000000000"

    iput-object v8, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->msisdn:Ljava/lang/String;

    const-string v1, "JanskyTransferManager"

    const-string v8, "other device option is added"

    invoke-static {v1, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getSecondaryNameForCall()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "JanskyTransferManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "secondaryName "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    invoke-direct {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;-><init>()V

    iput-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->msisdn:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    const v0, 0x7f100339

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$302(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/ListView;)Landroid/widget/ListView;

    new-instance v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040196

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v0, p1, v1, v3, v6}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$402(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;)Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$400(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_6
    const v0, 0x7f10033b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$502(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView;

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_7
    const v0, 0x7f10033a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$702(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$2;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100067

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$902(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$900(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$900(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$3;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setView(Landroid/view/View;)V

    const v0, 0x7f0905b0

    invoke-virtual {p0, v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setTitle(I)V

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;

    invoke-direct {v2, p0, p1, v5, v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Lcom/android/incallui/Call;Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    invoke-static {p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$5;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$5;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_9
    move-object v0, v3

    goto/16 :goto_2

    :cond_a
    move-object v0, v5

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
