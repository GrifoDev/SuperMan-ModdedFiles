.class final synthetic Lcom/android/server/am/-$Lambda$FR3W4DSTdODBY_LnoYu7lDAj41U;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$Lambda$FR3W4DSTdODBY_LnoYu7lDAj41U;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/am/-$Lambda$FR3W4DSTdODBY_LnoYu7lDAj41U;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->lambda$-com_android_server_am_UnsupportedDisplaySizeDialog_2234(Lcom/android/server/am/ActivityManagerService;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$Lambda$FR3W4DSTdODBY_LnoYu7lDAj41U;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/-$Lambda$FR3W4DSTdODBY_LnoYu7lDAj41U;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/-$Lambda$FR3W4DSTdODBY_LnoYu7lDAj41U;->$m$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
