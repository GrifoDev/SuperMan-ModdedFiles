.class Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemPersonaObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/SemPersonaObserver;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/SemPersonaObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/SemPersonaObserver;Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;-><init>(Lcom/samsung/android/knox/SemPersonaObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaObserver;->-get3(Lcom/samsung/android/knox/SemPersonaObserver;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "com.sec.knox.container.category.observer.onstatechange"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "com.sec.knox.container.extra.observer.newstate"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v4

    const-string/jumbo v6, "com.sec.knox.container.extra.observer.previousstate"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/knox/SemPersonaObserver;->onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaObserver;->-get2(Lcom/samsung/android/knox/SemPersonaObserver;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "com.sec.knox.container.category.observer.onsessionexpired"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaObserver;->onSessionExpired()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaObserver;->-get1(Lcom/samsung/android/knox/SemPersonaObserver;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "com.sec.knox.container.category.observer.onkeyguardstatechanged"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "com.sec.knox.container.extra.observer.keyguardstate"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-virtual {v6, v3}, Lcom/samsung/android/knox/SemPersonaObserver;->onKeyGuardStateChanged(Z)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaObserver;->-get0(Lcom/samsung/android/knox/SemPersonaObserver;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "com.sec.knox.container.category.observer.onattributechange"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "com.sec.knox.container.extra.observer.attribute"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/PersonaAttribute;->valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaAttribute;

    move-result-object v0

    const-string/jumbo v6, "com.sec.knox.container.extra.observer.attribute.state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;->this$0:Lcom/samsung/android/knox/SemPersonaObserver;

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/SemPersonaObserver;->onAttributeChange(Landroid/content/pm/PersonaAttribute;Z)V

    goto :goto_0
.end method
