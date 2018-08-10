.class public Lcom/android/server/pm/KnoxCommandBuilder;
.super Ljava/lang/Object;
.source "KnoxCommandBuilder.java"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxCommandBuilder;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static createCommand(Lcom/android/server/pm/KnoxCommand;)Lcom/android/server/pm/KnoxCommandBuilder;
    .locals 2

    new-instance v0, Lcom/android/server/pm/KnoxCommandBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxCommand;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/KnoxCommandBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public appendArg(I)Lcom/android/server/pm/KnoxCommandBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxCommandBuilder;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/KnoxCommandBuilder;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendArg(Ljava/lang/String;)Lcom/android/server/pm/KnoxCommandBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxCommandBuilder;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/KnoxCommandBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/KnoxCommandBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
