.class Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;
.super Lcom/android/internal/textservice/ISpellCheckerService$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerServiceBinder"
.end annotation


# instance fields
.field private final mInternalServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/textservice/SpellCheckerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/service/textservice/SpellCheckerService;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .locals 5

    iget-object v4, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/textservice/SpellCheckerService;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p4, v1}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/service/textservice/SpellCheckerService;->createSession()Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v3

    new-instance v1, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-direct {v1, p1, p2, p3, v3}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;-><init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V

    invoke-virtual {v3}, Landroid/service/textservice/SpellCheckerService$Session;->onCreate()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
