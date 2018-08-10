.class Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "NotificationShelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationShelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShelfState"
.end annotation


# instance fields
.field private hasItemsInStableShelf:Z

.field private maxShelfEnd:F

.field private openedAmount:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    return p1
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->-get3(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->-get3(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method
