.class Lcom/android/launcher2/AppFolderingSpr$Singleton;
.super Ljava/lang/Object;
.source "AppFolderingSpr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppFolderingSpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final instance:Lcom/android/launcher2/AppFolderingSpr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/AppFolderingSpr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/AppFolderingSpr;-><init>(Lcom/android/launcher2/AppFolderingSpr$1;)V

    sput-object v0, Lcom/android/launcher2/AppFolderingSpr$Singleton;->instance:Lcom/android/launcher2/AppFolderingSpr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/launcher2/AppFolderingSpr;
    .locals 1

    sget-object v0, Lcom/android/launcher2/AppFolderingSpr$Singleton;->instance:Lcom/android/launcher2/AppFolderingSpr;

    return-object v0
.end method
