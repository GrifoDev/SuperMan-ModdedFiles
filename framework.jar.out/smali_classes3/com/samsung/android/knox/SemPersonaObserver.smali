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

.field public static final FLAG_OBSERVER_ON_KEYGUARD_HIDDEN:I = 0x20

.field public static final FLAG_OBSERVER_ON_KEYGUARD_SHOWN:I = 0x10

.field public static final FLAG_OBSERVER_ON_KEYGUARD_STATE_CHANGED:I = 0x4

.field public static final FLAG_OBSERVER_ON_SESSION_EXPIRED:I = 0x2

.field public static final FLAG_OBSERVER_ON_STATE_CHANGED:I = 0x1


# instance fields
.field private checkOnAttributeChange:Z

.field private checkOnKeyguardHidden:Z

.field private checkOnKeyguardShown:Z

.field private checkOnKeyguardStateChanged:Z

.field private checkOnSessionExpired:Z

.field private checkOnStateChange:Z

.field protected containerId:I

.field private context:Landroid/content/Context;

.field protected flags:I

.field private personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnStateChange:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnSessionExpired:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnKeyguardStateChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnAttributeChange:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnKeyguardShown:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->checkOnKeyguardHidden:Z

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaObserver;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/knox/SemPersonaObserver;->containerId:I

    iput p3, p0, Lcom/samsung/android/knox/SemPersonaObserver;->flags:I

    invoke-direct {p0}, Lcom/samsung/android/knox/SemPersonaObserver;->initializeReceiver()V

    return-void
.end method

.method private initializeReceiver()V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;-><init>(Lcom/samsung/android/knox/SemPersonaObserver;Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaObserver;->personaObserverReceiver:Lcom/samsung/android/knox/SemPersonaObserver$PersonaObserverReceiver;

    return-void
.end method


# virtual methods
.method public abstract onKeyGuardStateChanged(Z)V
.end method

.method public onKeyguardHidden(I)V
    .locals 0

    return-void
.end method

.method public onKeyguardShown(I)V
    .locals 0

    return-void
.end method

.method public abstract onSessionExpired()V
.end method

.method public abstract onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end method

.method public unregisterPersonaObserverReceiver()V
    .locals 0

    return-void
.end method
