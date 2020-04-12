{
  name: 'stripe_invoices',
  hidden: false,
  target: std.mergePatch(std.extVar('schema'), { table: 'invoices' }),
  description: 'Invoices are statements of what a customer owes for a particular billing period, including subscriptions, invoice items, and any automatic proration adjustments if necessary.',
  mappings: {
    eventTimestamp: 'received_at',
  },
  category: 'Stripe',
  dimensions: {
    id: {
      pivot: false,
      type: 'string',
      column: 'id',
      hidden: false,
    },
    received_at: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'received_at',
      hidden: false,
    },
    metadata_x: {
      pivot: false,
      type: 'string',
      column: 'metadata_x',
      hidden: false,
    },
    uuid_ts: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'uuid_ts',
      hidden: false,
    },
    customer_id: {
      pivot: false,
      type: 'string',
      column: 'customer_id',
      hidden: false,
    },
    discount_id: {
      pivot: false,
      type: 'string',
      column: 'discount_id',
      hidden: false,
    },
    closed: {
      pivot: false,
      type: 'boolean',
      column: 'closed',
      hidden: false,
    },
    metadata_company: {
      pivot: false,
      type: 'string',
      column: 'metadata_company',
      hidden: false,
    },
    period_end: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'period_end',
      hidden: false,
    },
    description: {
      pivot: false,
      type: 'string',
      column: 'description',
      hidden: false,
    },
    forgiven: {
      pivot: false,
      type: 'boolean',
      column: 'forgiven',
      hidden: false,
    },
    attempted: {
      pivot: false,
      type: 'boolean',
      column: 'attempted',
      hidden: false,
    },
    charge_id: {
      pivot: false,
      type: 'string',
      column: 'charge_id',
      hidden: false,
    },
    subscription_id: {
      pivot: false,
      type: 'string',
      column: 'subscription_id',
      hidden: false,
    },
    currency: {
      pivot: false,
      type: 'string',
      column: 'currency',
      hidden: false,
    },
    date: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'date',
      hidden: false,
    },
    paid: {
      pivot: false,
      type: 'boolean',
      column: 'paid',
      hidden: false,
    },
    period_start: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'period_start',
      hidden: false,
    },
    receipt_number: {
      pivot: false,
      type: 'string',
      column: 'receipt_number',
      hidden: false,
    },
    next_payment_attempt: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'next_payment_attempt',
      hidden: false,
    },
  },
  measures: {
    count_all_rows: {
      description: 'Counts All Rows',
      aggregation: 'count',
      type: 'double',
      hidden: false,
    },
    sum_of_starting_balance: {
      column: 'starting_balance',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_tax: {
      column: 'tax',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_attempt_count: {
      column: 'attempt_count',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_tax_percent: {
      column: 'tax_percent',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_total: {
      column: 'total',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_subtotal: {
      column: 'subtotal',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_amount_due: {
      column: 'amount_due',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_ending_balance: {
      column: 'ending_balance',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
  },
}
