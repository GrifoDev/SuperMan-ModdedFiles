.class final Ljava/io/ObjectInputStream$1;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$subcl:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1264
    .local p1, "val$subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1266
    iget-object v0, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1267
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/io/ObjectInputStream;

    .line 1266
    if-eq v0, v2, :cond_0

    .line 1272
    :try_start_0
    const-string/jumbo v3, "readUnshared"

    const/4 v2, 0x0

    nop

    nop

    .line 1271
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1273
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1274
    :catch_0
    move-exception v1

    .line 1277
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_1
    const-string/jumbo v3, "readFields"

    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1278
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 1279
    :catch_1
    move-exception v1

    .line 1268
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1282
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
