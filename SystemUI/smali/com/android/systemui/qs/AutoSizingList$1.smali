.class Lcom/android/systemui/qs/AutoSizingList$1;
.super Ljava/lang/Object;
.source "AutoSizingList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/AutoSizingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/AutoSizingList;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList$1;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-static {v0}, Lcom/android/systemui/qs/AutoSizingList;->-wrap2(Lcom/android/systemui/qs/AutoSizingList;)V

    return-void
.end method
