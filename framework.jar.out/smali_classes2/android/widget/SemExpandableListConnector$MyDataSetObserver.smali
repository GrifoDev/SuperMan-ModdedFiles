.class public Landroid/widget/SemExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SemExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListConnector;


# direct methods
.method protected constructor <init>(Landroid/widget/SemExpandableListConnector;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-static {v0, v1, v1}, Landroid/widget/SemExpandableListConnector;->-wrap0(Landroid/widget/SemExpandableListConnector;ZZ)V

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-static {v0, v1, v1}, Landroid/widget/SemExpandableListConnector;->-wrap0(Landroid/widget/SemExpandableListConnector;ZZ)V

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetInvalidated()V

    return-void
.end method
