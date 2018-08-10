.class Lcom/android/server/pm/EphemeralResolverConnection$1$1;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/EphemeralResolverConnection$1;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/EphemeralResolverConnection$1;

.field final synthetic val$callback:Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;

.field final synthetic val$resolveList:Ljava/util/ArrayList;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection$1;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;->this$1:Lcom/android/server/pm/EphemeralResolverConnection$1;

    iput-object p2, p0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;->val$callback:Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;

    iput-object p3, p0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;->val$resolveList:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;->val$callback:Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;->val$resolveList:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;->val$startTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;->onPhaseTwoResolved(Ljava/util/List;J)V

    return-void
.end method
