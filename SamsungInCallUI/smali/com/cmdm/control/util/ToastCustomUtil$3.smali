.class Lcom/cmdm/control/util/ToastCustomUtil$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/util/ToastCustomUtil;->b(Landroid/widget/Toast;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic dj:Landroid/widget/Toast;

.field private final synthetic dk:I


# direct methods
.method constructor <init>(Landroid/widget/Toast;I)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/util/ToastCustomUtil$3;->dj:Landroid/widget/Toast;

    iput p2, p0, Lcom/cmdm/control/util/ToastCustomUtil$3;->dk:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/util/ToastCustomUtil$3;->dj:Landroid/widget/Toast;

    iget v1, p0, Lcom/cmdm/control/util/ToastCustomUtil$3;->dk:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/ToastCustomUtil;->c(Landroid/widget/Toast;I)V

    return-void
.end method
