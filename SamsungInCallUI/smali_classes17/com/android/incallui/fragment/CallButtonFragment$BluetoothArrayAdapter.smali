.class public Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISMISS_BT_POPUP:I = 0x1

.field private static final DISMISS_BT_POPUP_DELAY:I = 0x1f4


# instance fields
.field private mBTIconList:[I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStringList:[Ljava/lang/String;

.field private resId:I

.field final synthetic this$0:Lcom/android/incallui/fragment/CallButtonFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallButtonFragment;Landroid/content/Context;I[Ljava/lang/String;[I)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;-><init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mStringList:[Ljava/lang/String;

    iput p3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->resId:I

    iput-object p5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mBTIconList:[I

    return-void
.end method


# virtual methods
.method public activeBTDevice(I)V
    .locals 10

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v5, v1}, Lcom/android/incallui/fragment/CallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-static {v5}, Lcom/android/incallui/fragment/CallButtonFragment;->access$100(Lcom/android/incallui/fragment/CallButtonFragment;)V

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT Device - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is selected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-static {v0, v3}, Lcom/android/incallui/wrapper/BluetoothHeadsetWrapper;->connectAudio(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0903ed

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const v5, 0x7f0903eb

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mStringList:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v5, 0x7f0903ec

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public activeBTDevice(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    iget-object v1, v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->activeBTDevice(I)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "Invalid Bluetooth Item view ID!"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v5, 0x0

    const v6, 0x106000c

    move-object v2, p2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->resId:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;-><init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;Lcom/android/incallui/fragment/CallButtonFragment$1;)V

    const v3, 0x7f1001f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    const v3, 0x7f1001f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    const v3, 0x7f1001fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/SecOpenThemeUtils;->isThemeApplied(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->hasOnClickListeners()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$2;-><init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mBTIconList:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mStringList:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    goto :goto_0
.end method
