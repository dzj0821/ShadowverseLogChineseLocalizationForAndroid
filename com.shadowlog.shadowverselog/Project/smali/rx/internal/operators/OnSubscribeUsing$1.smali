.class Lrx/internal/operators/OnSubscribeUsing$1;
.super Ljava/lang/Object;
.source "OnSubscribeUsing.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeUsing;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeUsing;

.field final synthetic val$resource:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeUsing;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeUsing;

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing$1;, "Lrx/internal/operators/OnSubscribeUsing.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeUsing$1;->this$0:Lrx/internal/operators/OnSubscribeUsing;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeUsing$1;->val$resource:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing$1;, "Lrx/internal/operators/OnSubscribeUsing.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeUsing$1;->this$0:Lrx/internal/operators/OnSubscribeUsing;

    invoke-static {v0}, Lrx/internal/operators/OnSubscribeUsing;->access$000(Lrx/internal/operators/OnSubscribeUsing;)Lrx/functions/Action1;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeUsing$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
