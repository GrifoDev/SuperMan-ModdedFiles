.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/view/textservice/TextServicesManager;


# instance fields
.field private final mService:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "textservices"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    return-void
.end method

.method public static getInstance()Landroid/view/textservice/TextServicesManager;
    .locals 3

    const-class v2, Landroid/view/textservice/TextServicesManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-direct {v1}, Landroid/view/textservice/TextServicesManager;-><init>()V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    :try_start_0
    iget-object v2, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v2}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v1}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .locals 18

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    if-nez p4, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Locale should not be null if you don\'t refer settings."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-nez v10, :cond_3

    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v7

    const/4 v1, 0x0

    return-object v1

    :cond_3
    const/4 v13, 0x0

    if-eqz p4, :cond_6

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v13

    if-nez v13, :cond_4

    const/4 v1, 0x0

    return-object v1

    :cond_4
    if-eqz p2, :cond_7

    invoke-virtual {v13}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    :cond_5
    const/4 v1, 0x0

    return-object v1

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    if-ge v8, v1, :cond_7

    invoke-virtual {v10, v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v13, v12

    :cond_7
    if-nez v13, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v13, v12

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_a
    new-instance v11, Landroid/view/textservice/SpellCheckerSession;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    move-object/from16 v0, p3

    invoke-direct {v11, v10, v1, v0}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v4

    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v11

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "SpellCheckerInfo is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/textservice/ITextServicesManager;->setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->setSpellCheckerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/textservice/ITextServicesManager;->setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public switchUserForKnox(I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->switchUserForKnox(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in switchUserForKnox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
