.class public Lcom/absolute/android/persistservice/ABTPersistenceService;
.super Lcom/absolute/android/persistence/IABTPersistence$Stub;
.source "SourceFile"


# static fields
.field static final synthetic b:Z

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field a:Z

.field private g:Lcom/absolute/android/persistservice/x;

.field private h:Landroid/content/Context;

.field private i:Ljava/util/Hashtable;

.field private j:Lcom/absolute/android/persistservice/v;

.field private k:Lcom/absolute/android/persistservice/k;

.field private l:Lcom/absolute/android/persistservice/k;

.field private m:Lcom/absolute/android/persistservice/k;

.field private n:Lcom/absolute/android/persistservice/j;

.field private o:Lcom/absolute/android/persistservice/j;

.field private p:Lcom/absolute/android/persistservice/j;

.field private q:Lcom/absolute/android/persistservice/i;

.field private r:Lcom/absolute/android/persistservice/d;

.field private s:Lcom/absolute/android/persistservice/c;

.field private t:Ljava/util/HashSet;

.field private u:Lcom/absolute/android/persistservice/l;

.field private v:Ljava/util/Hashtable;

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:Lcom/absolute/android/persistservice/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-class v2, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    sput-boolean v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->c:Z

    const-string/jumbo v0, "/mnt/pia"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->d:Ljava/lang/String;

    const-string/jumbo v0, "AbsoluteSoftware"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->e:Ljava/lang/String;

    const-string/jumbo v0, "package_verifier_enable"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;-><init>()V

    iput-boolean v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->a:Z

    :try_start_0
    iput-object p1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    new-instance v5, Lcom/absolute/android/persistservice/y;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/absolute/android/persistservice/y;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/util/Hashtable;

    new-instance v5, Lcom/absolute/android/persistservice/v;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    const-string/jumbo v8, "abt-persistence-service"

    invoke-direct {v5, v6, v8, v7}, Lcom/absolute/android/persistservice/v;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/y;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v7, "abt-persistence-service"

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/v;)V

    new-instance v5, Lcom/absolute/android/persistservice/x;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v8, "abt-persistence-settings"

    invoke-direct {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/x;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v6, "ABTPersistenceService starting up - version: 3140"

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->a:Z

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v5}, Lcom/absolute/android/persistservice/x;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v5}, Lcom/absolute/android/persistservice/x;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    new-instance v5, Lcom/absolute/android/persistservice/k;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v8, "abt-persistence-apps"

    invoke-direct {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    new-instance v5, Lcom/absolute/android/persistservice/k;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v8, "abt-persistence-apps-to-install"

    invoke-direct {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    new-instance v5, Lcom/absolute/android/persistservice/k;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v8, "abt-persistence-apps-fallback"

    invoke-direct {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/k;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/k;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Ljava/util/Hashtable;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Ljava/util/Hashtable;

    const-string/jumbo v6, "3082020b30820174a00302010202044d26012f300d06092a864886f70d0101050500304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f667477617265301e170d3131303130363137353134335a170d3430313232393137353134335a304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f66747761726530819f300d06092a864886f70d010101050003818d00308189028181008624ba8f680f679b9b4ce208d42a655c82d25e10e40cee65c5e53b48b5d00d25e33a97931614dcd14933f426070b9f1f17dfd2edc970f5a9449ad481c51c5204b91b5220eebd9a41c56fc29f3437eb3995d1ef2ebd00fb23f48260f1ea95b96d41c208add6effa815237a84c630a3c8d99a4e4048467f7a7ed659ac33421effb0203010001300d06092a864886f70d0101050500038181005dc61981f6a1d1a373f88b0d5491324a122ad81241a3746a256029b60c09980ee698e9ea59afa2f15e0d0a912ef2a975820632d9b95cc469f749776b601399c77055f57e8f6cd7a373d8c79cb8472c1cc833867ca62e0257b2c00093156ec2909ea6d6e6a5f093876c8b21fda70d3bfe585a7b564a48ff72c73f4d25ffe8597b"

    const-string/jumbo v7, "Absolute Software Android signature"

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v5, "ABTPersistence_Install"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/absolute/android/persistservice/j;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v5, "ABTPersistence_InvokeMethod"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/absolute/android/persistservice/j;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->o:Lcom/absolute/android/persistservice/j;

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v5, "ABTPersistence_Download"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/absolute/android/persistservice/j;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->p:Lcom/absolute/android/persistservice/j;

    new-instance v5, Lcom/absolute/android/persistservice/c;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/absolute/android/persistservice/c;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->s:Lcom/absolute/android/persistservice/c;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->s:Lcom/absolute/android/persistservice/c;

    invoke-static {v5}, Lcom/absolute/android/persistservice/c;->a(Lcom/absolute/android/persistservice/c;)V

    new-instance v5, Lcom/absolute/android/persistservice/i;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/absolute/android/persistservice/i;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->q:Lcom/absolute/android/persistservice/i;

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->q:Lcom/absolute/android/persistservice/i;

    invoke-static {v5}, Lcom/absolute/android/persistservice/i;->a(Lcom/absolute/android/persistservice/i;)V

    new-instance v5, Lcom/absolute/android/persistservice/d;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/absolute/android/persistservice/d;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->r:Lcom/absolute/android/persistservice/d;

    new-instance v5, Lcom/absolute/android/persistservice/l;

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/absolute/android/persistservice/l;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Lcom/absolute/android/persistservice/k;Lcom/absolute/android/persistservice/y;)V

    iput-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "chmod 750 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i()V

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v5}, Lcom/absolute/android/persistservice/y;->a()V

    :goto_2
    return-void

    :cond_1
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting build fingerprint to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v5, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Exception thrown creating ABTPersistenceService: "

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    if-nez v5, :cond_3

    :goto_3
    const-string/jumbo v5, "APS"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Build fingerprint has changed since last boot.Now: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", previous: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Initiating handling of firmware update."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v5, v0}, Lcom/absolute/android/persistservice/x;->a(Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->a:Z

    goto/16 :goto_0

    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to set permission of persisted folder, got exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v5, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 1

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;
    .locals 17

    const/4 v10, 0x0

    sget-boolean v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v3, :cond_3

    :cond_0
    if-eqz p1, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->a(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->b(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    if-nez v15, :cond_5

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Download of APK for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v8, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v8, v0, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/absolute/android/persistservice/DownloadApkException;->a(Z)V

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v3

    if-nez v3, :cond_11

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->g(Lcom/absolute/android/persistservice/f;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_2
    :goto_1
    return-object v10

    :cond_3
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_4
    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "GetAppInfoRequest is null"

    invoke-direct {v11, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v4, "doGetAppInfo() failed"

    invoke-virtual {v3, v4, v11}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_5
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    const-string/jumbo v3, "abt-persistence-pm-lock"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    const-string/jumbo v3, "abt-persistence-wifi-lock"

    const/4 v4, 0x1

    invoke-virtual {v8, v4, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->c(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getDeviceIdImpl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const/16 v7, 0xc44

    invoke-static {v3, v11, v7, v4, v6}, Lcom/absolute/android/persistservice/r;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Initiating GetAppInfo() request for package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->d(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->e(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/absolute/android/persistservice/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/v;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_7

    :goto_2
    if-nez v12, :cond_9

    :cond_6
    :goto_3
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v10, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doGetAppInfo for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got exception/throwable for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", Exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v3

    if-nez v3, :cond_a

    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/f;->g(Lcom/absolute/android/persistservice/f;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_d

    if-nez v12, :cond_e

    :cond_8
    :goto_5
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3

    :cond_a
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v10, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v9

    if-nez v12, :cond_f

    :cond_b
    :goto_6
    if-nez v13, :cond_10

    :cond_c
    :goto_7
    throw v9

    :cond_d
    :try_start_4
    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v3, v8, v0, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_e
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    :cond_f
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    :cond_10
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_7

    :cond_11
    invoke-virtual {v8}, Lcom/absolute/android/persistservice/DownloadApkException;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v10, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    throw v8
.end method

.method private a(Lcom/absolute/android/persistservice/h;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    .locals 30

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v25

    sget-boolean v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v5}, Lcom/absolute/android/persistservice/k;->f(Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_4

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v3, Lcom/absolute/android/persistservice/f;

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getUpdateHostSPKIHash()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/absolute/android/persistservice/f;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/absolute/android/persistence/AppInfoProperties;->getPackageName()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_5

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetAppInfo failed because the server response  to GetAppInfo does not contain a PackageName value for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v3
    :try_end_0
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v28

    invoke-virtual/range {v28 .. v28}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_0
    throw v28

    :cond_2
    if-nez v25, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to invoke  GetAppInfo HTTP request because there is no pending install Application Profile for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-direct {v3, v0, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exceeded maximum number of update attempts ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") via GetAppInfo request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-direct {v3, v0, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v3

    :cond_5
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v28 .. v28}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppVersion()I

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v5}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v20

    move/from16 v0, p2

    if-eq v11, v0, :cond_a

    :cond_6
    invoke-virtual/range {v28 .. v28}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadUrl()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_b

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetAppInfo failed for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " because the server response to GetAppInfo does not contain a DownloadUrl value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v3, v15, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v3
    :try_end_1
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v5, v0}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetAppInfoAndDownloadAPK for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got exception/throwable for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", Exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v3, v0, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v3

    :cond_8
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetAppInfo failed because the server response  package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not match the existing / expected one: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v3

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetAppInfo failed because the server response  does not contain a valid VersionCode value for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v3, v0, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v3

    :cond_a
    move/from16 v0, v20

    if-ne v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v5}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " of package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " returned by GetAppInfo() query to: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " is already installed. No need to download the APK."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    return-object p3

    :cond_b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v28 .. v28}, Lcom/absolute/android/persistence/AppInfoProperties;->getDigitalSignature()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetAppInfo failed for URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " because the server response to GetAppInfo does not contain a DigitalSignature value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v3, v13, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v3

    :cond_d
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {v28 .. v28}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadIpAddress()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v22

    new-instance v8, Lcom/absolute/android/persistservice/e;

    invoke-virtual/range {v28 .. v28}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadHostSPKIHash()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object v10, v5

    invoke-direct/range {v8 .. v18}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/absolute/android/persistservice/PersistedAppInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/absolute/android/persistservice/PersistedAppInfo;-><init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object v24

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v3, v5, v0}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    return-object v0
.end method

.method protected static a()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    const-string/jumbo v1, "ro.kernel.qemu"

    invoke-static {v1}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "persdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "absolute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 23

    const/4 v8, 0x0

    sget-boolean v6, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v6, :cond_3

    :cond_0
    if-eqz p1, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->d(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->e(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ".apk"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const-string/jumbo v9, "connectivity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    if-nez v15, :cond_5

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Download of APK for package: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/absolute/android/persistservice/DownloadApkException;->a(Z)V

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v6

    if-nez v6, :cond_14

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->i(Lcom/absolute/android/persistservice/e;)Z

    move-result v6

    if-nez v6, :cond_15

    :cond_2
    :goto_1
    return-object v8

    :cond_3
    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "DownloadApkRequest is null"

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v9, "doDownloadApk() failed"

    invoke-virtual {v6, v9, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    const-string/jumbo v6, "abt-persistence-pm-lock"

    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    const-string/jumbo v6, "abt-persistence-wifi-lock"

    const/4 v9, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->h(Lcom/absolute/android/persistservice/e;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-static/range {v2 .. v12}, Lcom/absolute/android/persistservice/r;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/v;Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_b

    :goto_4
    if-nez v22, :cond_e

    :cond_7
    :goto_5
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_1

    :cond_8
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->canExecute()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Download of APK for package: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " got exception for URL: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v6, v9, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v6

    if-nez v6, :cond_f

    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/e;->i(Lcom/absolute/android/persistservice/e;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_10

    if-nez v22, :cond_11

    :cond_a
    :goto_7
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x1

    const/4 v9, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v8, v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v20

    if-nez v22, :cond_12

    :cond_c
    :goto_8
    if-nez v13, :cond_13

    :cond_d
    :goto_9
    throw v20

    :cond_e
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    :cond_f
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    new-instance v6, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v9, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1, v9}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_11
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_8

    :cond_13
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_9

    :cond_14
    invoke-virtual/range {v17 .. v17}, Lcom/absolute/android/persistservice/DownloadApkException;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    throw v17
.end method

.method private a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p4

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got NameNotFoundException for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " after successfully installing it. Can\'t get it\'s version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v5, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v5, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v1, v6}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v5

    :cond_1
    if-eq v0, p2, :cond_0

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Installed version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not match the version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " specified in the application profile.  The profile will be updated to match the version actually installed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/absolute/android/persistence/AppProfile;->setVersion(I)V

    const/4 v1, 0x0

    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object p4, v1

    :goto_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to rename APK file from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". File.renameTo() returned false."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v2, v3

    move-object v3, v5

    :goto_2
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to rename APK file from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Got exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 16

    if-nez p3, :cond_1

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to make a copy of the APK for package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ". The ApkPath is null/empty."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    return-object p3

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    :goto_0
    if-eqz p4, :cond_5

    :cond_2
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_3
    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_8

    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-ltz v12, :cond_9

    const/4 v12, 0x1

    :goto_3
    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Insufficient space available in persisted partition to make a copy of the APK in: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ". File size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", usable space: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    return-object p3

    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "copyApkToPersistentStorageArea() for package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " got exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3

    :cond_5
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    return-object v7

    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to rename APK file from: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "to: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ". File.renameTo() returned false."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    return-object v7

    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    new-array v4, v12, [B

    :goto_4
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_b

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_c

    :goto_5
    return-object p3

    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    :goto_6
    move-object/from16 p3, v7

    goto :goto_5

    :cond_d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/absolute/android/persistservice/a;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/a;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v2, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v2, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v2

    if-eq v2, v6, :cond_4

    :goto_1
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v2, p1, v6}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on install because the StartOnInstall intent specified in the App Profile is empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v2, v0, v1}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/h;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    return-void
.end method

.method private a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    move v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadResult(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got exception invoking IABTDownloadReceiver.onDownloadResult() for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/absolute/android/persistservice/f;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v1

    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->a(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2, p3, p4}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;->onGetAppInfoResult(ZLjava/lang/String;Lcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got exception invoking IABTGetAppInfoReceiver.onGetAppInfoResult() for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->a(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/f;->b(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/absolute/android/persistservice/g;)V
    .locals 17

    sget-boolean v14, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v14, :cond_2

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/MethodSpec;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/g;->b(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/g;->c(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/absolute/android/persistence/MethodReturnValue;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v8, v14, v15}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/absolute/android/persistence/MethodSpec;->getMethodName()Ljava/lang/String;

    move-result-object v10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    const/4 v15, 0x3

    invoke-virtual {v14, v7, v15}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v5}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v5}, Lcom/absolute/android/persistence/MethodSpec;->getArgTypes()[Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Lcom/absolute/android/persistence/MethodSpec;->getArgValues()[Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v9, Lcom/absolute/android/persistence/MethodReturnValue;

    const/4 v14, 0x0

    invoke-direct {v9, v3, v14}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v6, :cond_3

    :goto_0
    move-object v8, v9

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p1, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_3
    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_1
    invoke-interface {v6, v5, v9, v14, v15}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Got exception invoking IABTResultReceiver.onInvokeResult() for successful invocation of method: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v11

    move-object v8, v9

    :goto_2
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    const-string/jumbo v13, "null"

    if-nez v12, :cond_4

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception in ABTPersistenceService doInvokeMethod for method: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Cause: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v11}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_1

    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " Cause: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v6, v5, v8, v15, v14}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Got exception invoking IABTResultReceiver.onInvokeResult() for failed invocation of method: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v12}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    :catch_3
    move-exception v11

    goto/16 :goto_2
.end method

.method private a(Lcom/absolute/android/persistservice/h;)V
    .locals 27

    sget-boolean v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v3, :cond_4

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v9

    const/16 v22, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v23, 0x0

    const/4 v8, 0x0

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Starting install of package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v14, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget v12, v15, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v12, :cond_5

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v15, p0

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v22

    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/absolute/android/persistence/AppProfile;

    move-object v6, v0

    invoke-virtual/range {v22 .. v22}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v13

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v5

    if-nez v7, :cond_9

    :cond_1
    const/16 v16, 0x0

    :goto_2
    and-int/lit8 v3, v24, 0x4

    if-eqz v3, :cond_a

    :cond_2
    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/h;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v5

    if-nez v12, :cond_b

    :cond_3
    :goto_3
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v3, v0, :cond_d

    :goto_4
    :try_start_5
    const-string/jumbo v3, "SHA256"

    invoke-static {v3, v7}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    :goto_5
    if-nez v12, :cond_e

    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1, v5, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_4
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :catch_0
    move-exception v15

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Aborting install operation for package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " as there is no longer a pending install entry."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v17

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v17
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_1
    move-exception v14

    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Install of package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " failed with exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v14}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v9, :cond_f

    :goto_8
    instance-of v3, v14, Lcom/absolute/android/persistservice/DownloadApkException;

    if-nez v3, :cond_10

    :cond_7
    instance-of v3, v14, Lcom/absolute/android/persistservice/DownloadApkException;

    if-nez v3, :cond_11

    instance-of v3, v14, Lcom/absolute/android/persistservice/InstallTimeoutException;

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v11}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_8
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v16, 0x1

    goto/16 :goto_2

    :cond_a
    if-eqz v16, :cond_2

    goto/16 :goto_3

    :cond_b
    if-ne v12, v5, :cond_3

    if-ne v12, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Target version: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " of application: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is already installed."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    return-void

    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Target version: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " of application: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is already installed, but does not match the existing AppProfile version: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v21

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    throw v21

    :cond_d
    :try_start_d
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :catch_2
    move-exception v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Failed to get Digest for APK: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", algorithm: , exception : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/l;->b(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_6

    :cond_f
    const/4 v3, 0x1

    :try_start_e
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v9, v3, v0, v4, v1}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_8

    :catch_3
    move-exception v15

    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Got exception invoking  IABTResultReceiver.onOperationResult() for failed install of package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v15}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_10
    move-object v0, v14

    check-cast v0, Lcom/absolute/android/persistservice/DownloadApkException;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/DownloadApkException;->a()Z

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "The download and install of APK for package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " will not be re-tried as the exception was considered fatal."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v11}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_11
    move-object v0, v14

    check-cast v0, Lcom/absolute/android/persistservice/DownloadApkException;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v3, v0, :cond_12

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Scheduling re-try of update/install of package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " minutes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    mul-int/lit8 v3, v5, 0x3c

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Download of APK for package: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " will be re-tried when connectivity is available."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Ljava/util/HashSet;

    monitor-enter v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->r:Lcom/absolute/android/persistservice/d;

    invoke-static {v3}, Lcom/absolute/android/persistservice/d;->a(Lcom/absolute/android/persistservice/d;)V

    monitor-exit v15

    goto/16 :goto_9

    :catchall_2
    move-exception v19

    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v19

    :cond_13
    move-object/from16 v15, p0

    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v6}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v4, v7, v8}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v25

    or-int/lit8 v25, v25, 0x10

    move/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    monitor-exit p0

    goto/16 :goto_9

    :catchall_3
    move-exception v20

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/h;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lcom/absolute/android/persistservice/j;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, p3}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    if-nez v3, :cond_4

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Successfully installed package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", persisted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", monitored = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, p1}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v4, p1, v3, p5}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed delete APK file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " to clean up persisted directory"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    .locals 5

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to delete APK file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    or-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    new-instance v1, Lcom/absolute/android/persistservice/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    invoke-virtual {v3, v2}, Lcom/absolute/android/persistservice/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    new-instance v1, Lcom/absolute/android/persistservice/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->n:Lcom/absolute/android/persistservice/j;

    mul-int/lit16 v4, p3, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/absolute/android/persistservice/j;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 26

    const/16 v18, 0x2

    const/16 v19, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->k()I

    move-result v19

    if-nez v19, :cond_0

    :goto_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    const-string/jumbo v24, "com.absolute.android.persistservice.ABTPackageInstallObserver"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/Class;

    const-class v23, Landroid/net/Uri;

    const/16 v24, 0x0

    aput-object v23, v4, v24

    const/16 v23, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    const-string/jumbo v25, "android.content.pm.IPackageInstallObserver"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v4, v23

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x2

    aput-object v23, v4, v24

    const-class v23, Ljava/lang/String;

    const/16 v24, 0x3

    aput-object v23, v4, v24

    const-string/jumbo v23, "installPackage"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "invoking installPackage() for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v24, v23, v25

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    const/16 v24, 0x0

    const/16 v25, 0x3

    aput-object v24, v23, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    const/16 v23, 0x0

    :try_start_1
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const-string/jumbo v24, "getFinished"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const-string/jumbo v24, "getResult"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_5

    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invocation of PackageManager.installPackage() failed with result: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :catchall_0
    move-exception v14

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v14
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v20

    :try_start_3
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/absolute/android/persistservice/InstallTimeoutException;

    move/from16 v23, v0

    if-nez v23, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v21

    const-string/jumbo v22, "null"

    if-nez v21, :cond_a

    :goto_2
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invocation of PackageManager.installPackage() threw exception : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", cause: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v15

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    if-nez v19, :cond_b

    :goto_3
    throw v15

    :cond_0
    const/16 v23, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->k()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "waiting on installPackage() completion for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " count = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    if-gtz v7, :cond_2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x4e20

    invoke-virtual/range {v23 .. v25}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v10

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "installPackage() for package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " got interrupted exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v24, "Invocation of PackageManager.installPackage() was interrupted"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p3

    if-eq v0, v1, :cond_3

    new-instance v23, Lcom/absolute/android/persistservice/InstallTimeoutException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invocation of PackageManager.installPackage() timed out for package: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " version: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/absolute/android/persistservice/InstallTimeoutException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "installPackage() timed out, but completed for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " version: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    if-nez v19, :cond_4

    :goto_4
    return-void

    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->k()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    move-result v9

    goto :goto_4

    :catch_2
    move-exception v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Failed to re-enable package verification, exception: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    if-nez p4, :cond_7

    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "installPackage() completed successfully for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->w:Ljava/lang/Object;

    if-nez v19, :cond_8

    :goto_5
    return-void

    :cond_7
    :try_start_b
    invoke-direct/range {p0 .. p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p3

    if-eq v0, v1, :cond_6

    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invocation of PackageManager.installPackage() completed, but not for target version: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    :try_start_c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->k()I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    move-result v12

    goto :goto_5

    :catch_3
    move-exception v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Failed to re-enable package verification, exception: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    :try_start_d
    new-instance v23, Lcom/absolute/android/persistservice/InstallTimeoutException;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/InstallTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    :cond_a
    invoke-static/range {v21 .. v21}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v22

    goto/16 :goto_2

    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->k()I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    move-result v16

    goto/16 :goto_3

    :catch_4
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Failed to re-enable package verification, exception: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 11

    const/16 v7, 0x14

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v8, p1}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    if-nez v1, :cond_0

    move-object v5, p0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v8, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v8

    if-eqz v8, :cond_6

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_7

    :goto_3
    :try_start_2
    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Recovering package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " seconds by querying server, since there is no local APK."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {p0, p1, v7, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "SHA256"

    invoke-static {v9, v3}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Digital signature of APK: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is invalid."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :try_start_4
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to validate digital signature of APK: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Got exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v8, "initiateRecovery() got exception: "

    invoke-virtual {v7, v8, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x1

    :try_start_5
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Recovering package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " using local APK: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    if-nez p2, :cond_5

    move v8, v4

    :goto_4
    invoke-direct {p0, p1, v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :cond_5
    move v8, v7

    goto :goto_4

    :cond_6
    :try_start_6
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v9, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    move v4, v7

    goto/16 :goto_3
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "unknown"

    const-class v8, Landroid/content/pm/PackageManager;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_1

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_1

    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "INSTALL_FAILED_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne p1, v8, :cond_1

    move-object v0, v7

    goto :goto_1

    :cond_4
    const-string/jumbo v8, "INSTALL_PARSE_FAILED_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/h;)V

    return-void
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Z)V

    return-void
.end method

.method private b(Lcom/absolute/android/persistservice/h;)V
    .locals 8

    sget-boolean v5, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v5, :cond_3

    :cond_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Starting uninstall of package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v5, v0}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v5, v0}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_0
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    const/4 v3, 0x0

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_5

    :cond_1
    :goto_1
    if-nez v1, :cond_6

    :goto_2
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Successfully uninstalled package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    return-void

    :cond_3
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v5, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Uninstall of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " failed with exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7, v0, v6}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got exception invoking IABTResultReceiver.onOperationResult() for failed uninstall of package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to delete persisted file directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    :try_start_4
    invoke-interface {v1, v7, v5, v0, v6}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v4

    :try_start_5
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got exception invoking  IABTResultReceiver.onOperationResult() for successful uninstall of package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 5

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    monitor-exit p0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    invoke-interface {p2, v4, v2, p1, v3}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got exception invoking IABTResultReceiver.onOperationResult() for successful install of package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized b(Z)V
    .locals 19

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    move-object v9, v8

    :try_start_1
    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v8, v11

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v14, :cond_7

    const/4 v15, 0x0

    :goto_2
    if-nez p1, :cond_8

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    :cond_3
    :goto_4
    const/4 v4, 0x0

    if-nez v2, :cond_a

    const/4 v6, 0x0

    :goto_5
    if-eqz v15, :cond_b

    :cond_4
    :goto_6
    if-eqz v4, :cond_c

    :cond_5
    and-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_f

    if-eqz v15, :cond_10

    :cond_6
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    const/4 v15, 0x1

    goto :goto_2

    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    :try_start_3
    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistence/AppProfile;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v8

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v16, v0

    const-string/jumbo v17, "recoverAndCompletePendingOperations() got exception: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    :cond_9
    :try_start_5
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_3

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v16, "SHA256"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v3, v5}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v5

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed to get Digest for APK: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", algorithm: , exception : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v6

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    and-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    if-ge v0, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Persisted package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " has been removed (possibly due to factory reset). Initiating recovery re-installation."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v4

    goto/16 :goto_6

    :cond_c
    and-int/lit8 v16, v6, 0x1

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Resuming installation of package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    if-nez p1, :cond_d

    and-int/lit8 v16, v6, 0x4

    if-nez v16, :cond_e

    :goto_8
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_7

    :cond_d
    const/16 v7, 0x14

    goto :goto_8

    :cond_e
    const/16 v7, 0x14

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Resuming uninstallation of package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    goto/16 :goto_7

    :cond_10
    invoke-virtual {v12}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v16

    if-nez v16, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->j()Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Non-persisted package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " has been removed (possibly due to factory reset). Cleaning up to remove AppProfile and APK."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2000

    new-array v10, v11, [B

    :goto_2
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v4, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v11

    if-eqz v11, :cond_4

    :goto_3
    if-nez v5, :cond_5

    return-object v1

    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canExecute()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v11

    if-eqz v11, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_4
    iget-object v11, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to copy APK: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " got exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to copy APK to install directory. Got exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3
    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v9, v10, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_4
    :try_start_7
    iget-object v11, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Set permission of APK file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to readable failed."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v5, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v7

    iget-object v11, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to set file permissions of APK: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " got exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_5
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Set permission of APK file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to readable failed."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_2
    move-exception v6

    move-object v2, v3

    goto/16 :goto_4
.end method

.method private c(I)V
    .locals 3

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/h;)V

    return-void
.end method

.method private c(Lcom/absolute/android/persistservice/h;)V
    .locals 10

    sget-boolean v7, Lcom/absolute/android/persistservice/ABTPersistenceService;->b:Z

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, v0}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :goto_0
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v4

    :try_start_4
    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Recovery of package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed. Re-trying in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " secs. Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x5

    invoke-direct {p0, v0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v7

    const/4 v8, 0x1

    invoke-direct {p0, v0, v3, v7, v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    throw v6
.end method

.method private c(Ljava/lang/String;I)V
    .locals 18

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const-string/jumbo v16, "com.absolute.android.persistservice.ABTPackageDeleteObserver"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v15, 0x3

    new-array v12, v15, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v12, v16

    const/4 v15, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    const-string/jumbo v17, "android.content.pm.IPackageDeleteObserver"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v12, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v15, v12, v16

    const-string/jumbo v15, "deletePackage"

    invoke-virtual {v11, v15, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "invoking deletePackage() for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    invoke-virtual {v13, v10, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v15, 0x0

    :try_start_1
    new-array v15, v15, [Ljava/lang/Class;

    const-string/jumbo v16, "getFinished"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    const-string/jumbo v16, "getResult"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v15, 0x1

    if-eq v5, v15, :cond_3

    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invocation of PackageManager.deletePackage() failed with result: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :catchall_0
    move-exception v6

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    const-string/jumbo v11, "null"

    if-nez v10, :cond_4

    :goto_1
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invocation of PackageManager.deletePackage() threw exception : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", cause: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    throw v7

    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "waiting on deletePackage() completion for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " count = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    if-gtz v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    const-wide/16 v16, 0x4e20

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deletePackage() for package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " got interrupted exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "Invocation of PackageManager.deletePackage() was interrupted"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    invoke-direct/range {p0 .. p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invocation of PackageManager.deletePackage() timed out for package: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deletePackage() timed out, but completed for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    return-void

    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deletePackage() completed successfully for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/absolute/android/persistservice/v;->d(Ljava/lang/String;)V

    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->x:Ljava/lang/Object;

    return-void

    :cond_4
    :try_start_9
    invoke-static {v10}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v11

    goto/16 :goto_1
.end method

.method private declared-synchronized c(Z)V
    .locals 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v9}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    move-object v1, v0

    :try_start_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v9, v5}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v9}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v9

    if-lez v9, :cond_2

    and-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v10, v5}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    if-nez p1, :cond_4

    move v7, v8

    :goto_3
    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Initiating install request for package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " secs"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct {p0, v5, v9, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v9, "handleFirmwareUpdate() got exception: "

    invoke-virtual {v8, v9, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_4
    const/16 v7, 0x14

    goto :goto_3
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/l;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return v3

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/x;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.absolute.persistence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkIsCallingPackage() for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " failed. Unable to get calling packages for UID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    move-object v3, v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    :goto_1
    return v0

    :cond_1
    aget-object v6, v2, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->t:Ljava/util/HashSet;

    return-object v0
.end method

.method private declared-synchronized g(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to delete APK file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized h(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete copy of APK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_3
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete install folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private h()Z
    .locals 13

    const/4 v12, 0x1

    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    array-length v4, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    :goto_1
    new-instance v10, Ljava/lang/SecurityException;

    const-string/jumbo v11, "Not authorized to access ABT Persistence Service"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    :try_start_1
    aget-object v6, v3, v5

    const/16 v10, 0x40

    invoke-virtual {v1, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v7, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v8, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "android.uid.system:1000"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, v7, v9

    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    if-nez v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    return v12

    :cond_3
    return v12

    :catch_0
    move-exception v2

    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v11, "Unable to get Package for calling UID. Denying access."

    invoke-virtual {v10, v11, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private i()V
    .locals 10

    :try_start_0
    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, v5}, Lcom/absolute/android/persistservice/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, v5}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to clean up fallbacks, got exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v3, "ro.crypto.state"

    invoke-static {v3}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vold.decrypt"

    invoke-static {v3}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "encrypted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "trigger_reset_main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "trigger_post_fs_dat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "trigger_restart_min_framework"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v4, "initialBootUpWhileEncrypted() got exception: "

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private k()I
    .locals 5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    return-void
.end method

.method public downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .locals 11

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Package name argument is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Download URL argument is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Version argument is invalid (0)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    if-nez p6, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Digital signature argument is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/absolute/android/persistservice/e;

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->p:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_7
    return-void
.end method

.method public getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;
    .locals 1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    return-void
.end method

.method public getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Package name argument is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Access key argument is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Update URL argument is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/absolute/android/persistservice/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/absolute/android/persistservice/f;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->p:Lcom/absolute/android/persistservice/j;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_6
    return-void
.end method

.method public getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getDeviceIdImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdImpl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/x;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/absolute/android/utils/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/x;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/x;->e()Z

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v17

    if-eqz v17, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Persistence version = 3140, state = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/absolute/android/persistservice/k;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v17, "Managed Applications ---\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v9

    array-length v12, v9

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v12, :cond_2

    :goto_1
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "\nPersisted partition: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", size = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", available = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " bytes\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "ls -l "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Contents:\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_0
    const-string/jumbo v17, ""

    return-object v17

    :cond_1
    :try_start_2
    const-string/jumbo v17, "There are no managed applications\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Exception occurred getting diagnostics: "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    :try_start_4
    aget-object v15, v9, v14

    invoke-virtual {v15}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    const/16 v17, 0x0

    :try_start_5
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Install status: version "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " is currently installed\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/k;->h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v3

    if-nez v3, :cond_4

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Pending install AppProfile = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v15}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    :goto_7
    const-string/jumbo v17, "--------\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_3

    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Install status: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " is currently not installed\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "APK path = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "APK digest = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "flags = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v17, v4, 0x1

    if-nez v17, :cond_5

    :goto_8
    and-int/lit8 v17, v4, 0x2

    if-nez v17, :cond_6

    :goto_9
    and-int/lit8 v17, v4, 0x4

    if-nez v17, :cond_7

    :goto_a
    and-int/lit8 v17, v4, 0x8

    if-nez v17, :cond_8

    :goto_b
    and-int/lit8 v17, v4, 0x10

    if-nez v17, :cond_9

    :goto_c
    const-string/jumbo v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Update attempt count = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->c()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v17, ": INSTALL_PENDING "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_6
    const-string/jumbo v17, ": UNINSTALL_PENDING "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_7
    const-string/jumbo v17, ": DOWNLOAD_PENDING "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_8
    const-string/jumbo v17, ": DELETE_PERSISTED_FILES_PENDING "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_9
    const-string/jumbo v17, ": INSTALL_TIMED_OUT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_a
    const-string/jumbo v17, "No pending install AppProfile\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7
.end method

.method public getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/v;

    if-eqz v1, :cond_1

    :goto_0
    new-instance v3, Lcom/absolute/android/persistservice/ad;

    invoke-direct {v3, v1}, Lcom/absolute/android/persistservice/ad;-><init>(Lcom/absolute/android/persistservice/v;)V

    monitor-exit p0

    return-object v3

    :cond_0
    return-object v4

    :cond_1
    new-instance v1, Lcom/absolute/android/persistservice/v;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->y:Lcom/absolute/android/persistservice/y;

    invoke-direct {v1, v3, p1, v4}, Lcom/absolute/android/persistservice/v;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/y;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->v:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPersistedAppCount()I
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/k;->b()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/absolute/android/persistservice/w;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/absolute/android/persistservice/w;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/v;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Specified packageName argument is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Specified fileName argument is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Specified fileName argument is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The specified packageName does not match that of a calling package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-object v2
.end method

.method public getState()I
    .locals 1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v0

    return v0
.end method

.method public getSystemFile(Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/absolute/android/persistservice/ah;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    invoke-direct {v0, p1, p2, v1}, Lcom/absolute/android/persistservice/ah;-><init>(Ljava/lang/String;ZLcom/absolute/android/persistservice/v;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Specified path argument is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v2
.end method

.method public getVersion()I
    .locals 1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    const/16 v0, 0xc44

    return v0
.end method

.method public declared-synchronized install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 18

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v7, 0x0

    if-nez p2, :cond_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    :cond_1
    const-string/jumbo v10, "Installation of application failed because no APK file nor URL was specified."

    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_2
    :try_start_1
    new-instance v12, Ljava/lang/NullPointerException;

    const-string/jumbo v13, "AppProfile argument is null"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid version number: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " specified in AppProfile for package name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Install failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v12, p2

    :goto_0
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    const-string/jumbo v10, "Installation of application APK failed because the file is empty."

    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v7, 0x1

    move-object/from16 v12, p2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v13, v5}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    :goto_1
    if-eqz v7, :cond_c

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;I)V

    const/4 v12, 0x1

    if-eq v7, v12, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1, v13}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v12, v2

    goto/16 :goto_0

    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Installation of application APK failed because the file does not exist at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " or "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v12, v13}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method public invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v5

    new-instance v3, Lcom/absolute/android/persistservice/g;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/absolute/android/persistservice/g;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->o:Lcom/absolute/android/persistservice/j;

    const/4 v5, 0x4

    invoke-static {v4, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Method Specification is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-void
.end method

.method public declared-synchronized persistApp(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 10

    const/4 v9, 0x1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v2, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v6

    if-ne v6, v2, :cond_2

    :goto_0
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v6, v0}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eq v6, v9, :cond_4

    :goto_1
    const/4 v4, 0x0

    :try_start_3
    const-string/jumbo v6, "SHA256"

    invoke-static {v6, v3}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v6, p1, v3}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v6

    if-eq v6, v9, :cond_5

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Successfully persisted package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Version = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", persisted = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", monitored = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_5
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "AppProfile argument is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :catch_0
    move-exception v4

    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not installed. Please install it prior to invoking this persistApp() method"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v6, v5, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_7
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The version number in the persistApp(AppProfile) argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not match the installed version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Using the installed version."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/absolute/android/persistence/AppProfile;->setVersion(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 v6, 0x1

    :try_start_8
    invoke-direct {p0, v0, v2, v3, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :catch_1
    move-exception v5

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to get Digest for APK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", algorithm: , exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v6, v0, v3, v4}, Lcom/absolute/android/persistservice/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3
.end method

.method public refreshDeviceId()V
    .locals 2

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/x;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method

.method public registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v1, p1, p2, p3}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Specified packageName argument is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "IABTPing callback argument is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Specified ping interval argument is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The specified packageName does not match that of a calling package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The AppProfile for the specified package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has \'monitor\' set to false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAllPersistence(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->a(Z)V

    return-void

    :cond_0
    return-void
.end method

.method public declared-synchronized setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 10

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, v0}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v7, p1}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v7, p1}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "App Profile argument is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' not found. Cannot update its AppProfile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v8, "setApplicationProfile() failed: "

    invoke-virtual {v7, v8, v4}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Version number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " specified in the AppProfile for package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not match the existing version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Use the install() API if you wish to install a new version"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setApplicationProfile() failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setPersistence(Ljava/lang/String;Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistservice/k;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Package name argument is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' not found. Cannot update its \'persist\' flag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v4, "setPersistence() failed: "

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setState(I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v4}, Lcom/absolute/android/persistservice/x;->a()I

    move-result v0

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->g:Lcom/absolute/android/persistservice/x;

    invoke-virtual {v4, p1}, Lcom/absolute/android/persistservice/x;->a(I)V

    if-ne v0, p1, :cond_4

    move v1, v2

    :goto_0
    if-nez v1, :cond_5

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The newState is not a valid state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Persistence state was changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    if-ne p1, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    goto :goto_1
.end method

.method public testFirmwareUpdate()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v1, "Testing firmware update ..."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Z)V

    return-void

    :cond_0
    return-void
.end method

.method public declared-synchronized uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 26

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v3, v20

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/absolute/android/persistservice/k;->g(Ljava/lang/String;)I

    move-result v21

    if-nez p2, :cond_3

    and-int/lit8 v21, v21, -0x9

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/absolute/android/persistservice/k;->b(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Package name argument is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v22

    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    new-instance v3, Lcom/absolute/android/persistence/AppProfile;

    move-object/from16 v0, v23

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, ""

    const-string/jumbo v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->k:Lcom/absolute/android/persistservice/k;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v3, v5}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v23

    :goto_2
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t uninstall. The package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->j:Lcom/absolute/android/persistservice/v;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v5}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    or-int/lit8 v21, v21, 0x8

    goto/16 :goto_1

    :catch_1
    move-exception v23

    move-object/from16 v3, v20

    goto :goto_2
.end method

.method public unregisterPing(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->u:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/l;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
