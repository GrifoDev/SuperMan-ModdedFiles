.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field public mActivityIn:Z

.field public mActivityOut:Z

.field private mIsMobileTypeIconWide:Z

.field private mLastMobileActivityId:I

.field private mLastMobileRoamingId:I

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileActivityIn:Landroid/widget/ImageView;

.field private mMobileActivityOut:Landroid/widget/ImageView;

.field private mMobileDark:Landroid/widget/ImageView;

.field private mMobileDataGroup:Landroid/view/ViewGroup;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingId:I

.field private mMobileSignalStrengthGroup:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field public mRoaming:Z

.field private mSlotFocus:Landroid/widget/ImageView;

.field private mSlotFocusIconId:I

.field private mSlotFocusVisible:Z

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusVisible:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->maybeStopAnimatableDrawable(Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0037

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return-void

    :cond_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00e0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private maybeStartAnimatableDrawable(Landroid/widget/ImageView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    instance-of v2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    :cond_1
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_2
    return-void
.end method

.method private maybeStopAnimatableDrawable(Landroid/widget/ImageView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_1
    return-void
.end method

.method private updateAnimatableIcon(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->maybeStopAnimatableDrawable(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->maybeStartAnimatableDrawable(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public apply(Z)Z
    .locals 8

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateAnimatableIcon(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateAnimatableIcon(Landroid/widget/ImageView;I)V

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    if-eq v1, v4, :cond_3

    sget-boolean v1, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SignalClusterView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMobileActivityId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusVisible:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120ab2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalStrengthGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120ab4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    sget-boolean v1, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v4, "SignalClusterView"

    const-string/jumbo v5, "mobile: %s sig=%d typ=%d"

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "VISIBLE"

    :goto_3
    aput-object v1, v6, v2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_MPTCP:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_6
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v1, :cond_d

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v1

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v1, "GONE"

    goto :goto_3

    :cond_b
    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v3

    goto :goto_5

    :cond_e
    const-string/jumbo v1, "SignalClusterView"

    const-string/jumbo v2, "mMobileDataGroup = null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setTooltip(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalStrengthGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;Z)V

    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0339

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    const v1, 0x7f0a033a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    const v1, 0x7f0a033c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    const v1, 0x7f0a013a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0334

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    const v1, 0x7f0a04c7

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalStrengthGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalStrengthGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;Z)V

    :cond_0
    const v1, 0x7f0a0338

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    const v1, 0x7f0a0336

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    const v1, 0x7f0a0337

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a04dd

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/Rune;->STATBAR_MAX_SIGNAL_LEVEL:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const v1, 0x7f0806cf

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    :cond_1
    return-void
.end method
