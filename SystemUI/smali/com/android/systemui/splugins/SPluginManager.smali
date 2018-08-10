.class public interface abstract Lcom/android/systemui/splugins/SPluginManager;
.super Ljava/lang/Object;
.source "SPluginManager.java"


# direct methods
.method public static getAction(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v1, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t provide an interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t provide an action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation
.end method

.method public abstract dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<*>;)V"
        }
    .end annotation
.end method
