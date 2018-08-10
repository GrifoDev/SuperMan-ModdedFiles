.class final synthetic Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->lambda$-com_android_systemui_stackdivider_FocusedFrameView_4457(Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;->-$f0:Z

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/-$Lambda$ZUb9kvhUlNdL5KuqLDh43DMhq1c$4;->$m$0()V

    return-void
.end method
