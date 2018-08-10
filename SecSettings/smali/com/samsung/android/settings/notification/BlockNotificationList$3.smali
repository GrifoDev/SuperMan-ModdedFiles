.class final Lcom/samsung/android/settings/notification/BlockNotificationList$3;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$3;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$3;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    check-cast p2, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/BlockNotificationList$3;->compare(Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)I

    move-result v0

    return v0
.end method
