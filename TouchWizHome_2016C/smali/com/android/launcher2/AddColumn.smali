.class Lcom/android/launcher2/AddColumn;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# instance fields
.field mColumnName:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/AddColumn;->mColumnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/AddColumn;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AddColumn;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AddColumn;->mType:Ljava/lang/String;

    return-object v0
.end method
