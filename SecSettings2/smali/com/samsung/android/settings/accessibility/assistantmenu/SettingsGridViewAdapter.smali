.class public Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;
    }
.end annotation


# static fields
.field private static mIsLongClick:Z


# instance fields
.field private mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

.field private final mHandler:Landroid/os/Handler;

.field private mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayout:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mIsLongClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mHandler:Landroid/os/Handler;

    check-cast p1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    iput p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mLayout:I

    iput-object p4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f110631

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mLayout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v5, 0x7f110632

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getIcon()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f110634

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f110633

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v5, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v5, 0x7f1104dd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mItemArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetIsWidgetVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetUpperDetectedItemId()I

    move-result v5

    if-ne v5, p1, :cond_5

    :goto_1
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_3

    const v5, 0x7f02007f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, -0xb451b0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_4

    const v5, 0x7f02007e

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, -0x262ef0f1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "SettingsGridViewAdapter"

    const-string/jumbo v6, "getView"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetLowerDetectedItemId()I

    move-result v5

    if-ne v5, p1, :cond_1

    goto :goto_1
.end method
