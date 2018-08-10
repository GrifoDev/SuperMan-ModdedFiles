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
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    return-void
.end method
