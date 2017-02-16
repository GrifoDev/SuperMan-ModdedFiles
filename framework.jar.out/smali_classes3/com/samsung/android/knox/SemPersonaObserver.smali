.class public abstract Lcom/samsung/android/knox/SemPersonaObserver;
.super Ljava/lang/Object;
.source "SemPersonaObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;
    }
.end annotation


# static fields
.field public static final FLAG_OBSERVER_ON_ATTRIBUTE_CHANGED:I = 0x8

.field public static final FLAG_OBSERVER_ON_KEYGUARD_STATE_CHANGED:I = 0x4

.field public static final FLAG_OBSERVER_ON_SESSION_EXPIRED:I = 0x2

.field public static final FLAG_OBSERVER_ON_STATE_CHANGED:I = 0x1


# instance fields
.field private checkOnAttributeChange:Z

.field private checkOnKeyguardStateChanged:Z

.field private checkOnSessionExpired:Z

.field private checkOnStateChange:Z

.field protected containerId:I

.field private context:Landroid/content/Context;

.field protected flags:I

.field private personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/knox/SemPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnAttributeChange:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/knox/SemPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnKeyguardStateChanged:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/knox/SemPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnSessionExpired:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/knox/SemPersonaObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnStateChange:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    .line 51
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    .line 53
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnStateChange:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnSessionExpired:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnKeyguardStateChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnAttributeChange:Z

    .line 65
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    .line 66
    iput p2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    .line 67
    iput p3, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaObserver;->initializeReceiver()V

    .line 64
    return-void
.end method

.method private initializeReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    new-instance v1, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;-><init>(Lcom/samsung/android/knox/SemPersonaObserver;Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    .line 75
    iget v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_0

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "com.sec.knox.container.category.observer.onstatechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 80
    iput-boolean v5, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnStateChange:Z

    .line 81
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    const-string/jumbo v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "com.sec.knox.container.category.observer.onsessionexpired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 90
    iput-boolean v5, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnSessionExpired:Z

    .line 91
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    const-string/jumbo v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "com.sec.knox.container.category.observer.onkeyguardstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 100
    iput-boolean v5, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnKeyguardStateChanged:Z

    .line 101
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    const-string/jumbo v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.knox.container.action.observer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "com.sec.knox.container.category.observer.onattributechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 110
    iput-boolean v5, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnAttributeChange:Z

    .line 111
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    const-string/jumbo v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    return-void
.end method


# virtual methods
.method public onAttributeChange(Landroid/content/pm/PersonaAttribute;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p2, "enabled"    # Z

    .prologue
    .line 159
    return-void
.end method

.method public abstract onKeyGuardStateChanged(Z)V
.end method

.method public abstract onSessionExpired()V
.end method

.method public abstract onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end method

.method public unregisterPersonaObserverReceiver()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    :cond_0
    return-void
.end method
