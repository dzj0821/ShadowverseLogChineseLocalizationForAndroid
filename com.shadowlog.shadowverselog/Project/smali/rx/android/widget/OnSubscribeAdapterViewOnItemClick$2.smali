.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

.field final synthetic val$composite:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

    .prologue
    .line 52
    iput-object p1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$composite:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    iput-object p3, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$composite:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->removeOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z

    .line 56
    return-void
.end method
