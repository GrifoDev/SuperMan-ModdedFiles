.class final enum Lcom/android/launcher2/MenuWidgets$WidgetState$3;
.super Lcom/android/launcher2/MenuWidgets$WidgetState;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets$WidgetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuWidgets$WidgetState;-><init>(Ljava/lang/String;ILcom/android/launcher2/MenuWidgets$1;)V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SEARCH"

    return-object v0
.end method

.method protected getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    invoke-static {p1}, Lcom/android/launcher2/MenuWidgets;->access$1300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    return-object v0
.end method
