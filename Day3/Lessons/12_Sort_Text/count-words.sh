#! /bin/sh

cat "$@" |

tr -s '[:punct:][:space:]' '\n' 	 |

	tr '[:upper:]' '[:lower:]'	 |

		sort | uniq -c		 |

			sort -nr

