.class public Lcom/absolute/android/persistservice/ad;
.super Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;
.source "SourceFile"


# instance fields
.field private a:Lcom/absolute/android/persistservice/v;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;-><init>()V

    iput-object p1, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/v;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/v;->b()V

    return-void
.end method

.method public getIterator(I)Lcom/absolute/android/persistence/IABTLogIterator;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/v;->a(I)Lcom/absolute/android/persistence/IABTLogIterator;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLogSizeKB()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/v;->d()I

    move-result v0

    return v0
.end method

.method public getNumberOfLogs()I
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/v;->c()I

    move-result v0

    return v0
.end method

.method public logMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/absolute/android/persistservice/v;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->a:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0, p1, p2}, Lcom/absolute/android/persistservice/v;->a(II)V

    return-void
.end method
