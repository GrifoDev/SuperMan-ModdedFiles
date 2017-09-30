.class final Lcom/whitepages/nameid/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/whitepages/nameid/d$a;->a(Landroid/os/IBinder;)Lcom/whitepages/nameid/d;

    move-result-object v0

    invoke-static {v0}, Lcom/whitepages/nameid/f;->a(Lcom/whitepages/nameid/d;)Lcom/whitepages/nameid/d;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/whitepages/nameid/f;->a(Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Lcom/whitepages/nameid/f;->a(J)V

    return-void
.end method
