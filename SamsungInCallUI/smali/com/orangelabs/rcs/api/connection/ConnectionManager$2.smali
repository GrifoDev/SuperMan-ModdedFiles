.class Lcom/orangelabs/rcs/api/connection/ConnectionManager$2;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/orangelabs/rcs/api/connection/ConnectionManager;->showMessageAndExit(Landroid/app/Activity;Ljava/lang/String;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$2;->this$0:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    iput-object p2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
