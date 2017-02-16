.class Lcom/samsung/android/share/SShareMoreActions$ActionItem;
.super Ljava/lang/Object;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareMoreActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionItem"
.end annotation


# instance fields
.field icon:I

.field id:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "pID"    # I
    .param p2, "pIcon"    # I
    .param p3, "pName"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->id:I

    .line 318
    iput p2, p0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->icon:I

    .line 319
    iput-object p3, p0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->name:Ljava/lang/String;

    .line 316
    return-void
.end method
