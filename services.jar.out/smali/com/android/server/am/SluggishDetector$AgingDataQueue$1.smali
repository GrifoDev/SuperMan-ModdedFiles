.class Lcom/android/server/am/SluggishDetector$AgingDataQueue$1;
.super Ljava/lang/Object;
.source "SluggishDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getElementListForPeriodicReport(J)Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/SluggishDetector$AgingDataQueue;


# direct methods
.method constructor <init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$1;->this$1:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)I
    .locals 4

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    check-cast p2, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$1;->compare(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)I

    move-result v0

    return v0
.end method
