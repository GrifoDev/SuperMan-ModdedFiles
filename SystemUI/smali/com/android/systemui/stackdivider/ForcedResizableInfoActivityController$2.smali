.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-wrap0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-wrap1(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;I)V

    return-void
.end method
