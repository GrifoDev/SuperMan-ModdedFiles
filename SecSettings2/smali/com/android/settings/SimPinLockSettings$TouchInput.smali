.class Lcom/android/settings/SimPinLockSettings$TouchInput;
.super Ljava/lang/Object;
.source "SimPinLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/SimPinLockSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SimPinLockSettings;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1102cb

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    const v0, 0x7f1102c2

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    const v0, 0x7f1102c3

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    const v0, 0x7f1102c4

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    const v0, 0x7f1102c5

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    const v0, 0x7f1102c6

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    const v0, 0x7f1102c7

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    const v0, 0x7f1102c8

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    const v0, 0x7f1102c9

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    const v0, 0x7f1102ca

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    const v0, 0x7f11019b

    invoke-virtual {p1, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    const-string/jumbo v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SimPinLockSettings;Lcom/android/settings/SimPinLockSettings$TouchInput;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPinLockSettings;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings;->finish()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$TouchInput;->this$0:Lcom/android/settings/SimPinLockSettings;

    invoke-static {v1, v0}, Lcom/android/settings/SimPinLockSettings;->-wrap2(Lcom/android/settings/SimPinLockSettings;I)V

    :cond_1
    return-void
.end method
