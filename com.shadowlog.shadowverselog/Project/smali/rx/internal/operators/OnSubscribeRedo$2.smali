.class Lrx/internal/operators/OnSubscribeRedo$2;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$currentProducer:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$sourceSubscriptions:Lrx/subscriptions/SerialSubscription;

.field final synthetic val$terminals:Lrx/subjects/PublishSubject;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Subscriber;Lrx/subjects/PublishSubject;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicReference;Lrx/subscriptions/SerialSubscription;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeRedo;

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2;, "Lrx/internal/operators/OnSubscribeRedo.2;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$terminals:Lrx/subjects/PublishSubject;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$currentProducer:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$sourceSubscriptions:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 209
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2;, "Lrx/internal/operators/OnSubscribeRedo.2;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$2$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$2;)V

    .line 245
    .local v0, "terminalDelegatingSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$sourceSubscriptions:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 246
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeRedo;->access$200(Lrx/internal/operators/OnSubscribeRedo;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method
