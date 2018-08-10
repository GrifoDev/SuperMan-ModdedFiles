.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$6;
.super Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->-get21()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->-set20(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
