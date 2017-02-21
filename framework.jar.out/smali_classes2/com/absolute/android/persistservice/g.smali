.class Lcom/absolute/android/persistservice/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Lcom/absolute/android/persistence/MethodSpec;

.field private c:Lcom/absolute/android/persistence/IABTResultReceiver;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/g;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/absolute/android/persistservice/g;->b:Lcom/absolute/android/persistence/MethodSpec;

    iput-object p3, p0, Lcom/absolute/android/persistservice/g;->c:Lcom/absolute/android/persistence/IABTResultReceiver;

    iput-object p4, p0, Lcom/absolute/android/persistservice/g;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/MethodSpec;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->b:Lcom/absolute/android/persistence/MethodSpec;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTResultReceiver;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->c:Lcom/absolute/android/persistence/IABTResultReceiver;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->d:Ljava/lang/String;

    return-object v0
.end method
