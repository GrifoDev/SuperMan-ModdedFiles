.class final Ljava/util/logging/LogManager$5;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$level:Ljava/util/logging/Level;

.field final synthetic val$logger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    .locals 0

    iput-object p1, p0, Ljava/util/logging/LogManager$5;->val$logger:Ljava/util/logging/Logger;

    iput-object p2, p0, Ljava/util/logging/LogManager$5;->val$level:Ljava/util/logging/Level;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava/util/logging/LogManager$5;->val$logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Ljava/util/logging/LogManager$5;->val$level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const/4 v0, 0x0

    return-object v0
.end method
