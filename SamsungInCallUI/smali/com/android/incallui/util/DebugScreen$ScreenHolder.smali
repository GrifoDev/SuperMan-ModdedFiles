.class public Lcom/android/incallui/util/DebugScreen$ScreenHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/DebugScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenHolder"
.end annotation


# instance fields
.field public isShowingScreen:Z

.field public mBtnClear:Landroid/widget/Button;

.field public mBtnShow:Landroid/widget/Button;

.field public mBtnTest1:Landroid/widget/Button;

.field public mBtnTest2:Landroid/widget/Button;

.field public mBtnTest3:Landroid/widget/Button;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mLogView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/DebugScreen$ScreenHolder;->isShowingScreen:Z

    return-void
.end method
